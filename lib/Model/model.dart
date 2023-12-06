import 'dart:async';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import "package:table_calendar/table_calendar.dart";
import "package:flutter/cupertino.dart";
import "Event.dart";
import 'package:pedometer/pedometer.dart';
import 'dart:math';
import 'CalorieData.dart';

// Selected Page Data

class SelectedPage {

  var selectedIndex = 0;

  void updateSelectedIndex(var newIndex){
    selectedIndex = newIndex;
  }

  getSelectedIndex()  {
    return selectedIndex;
  }

}

// Fitness model data

class FitnessModel {
  int totalCalories = 0;

  void addCalories(int amount) {
    totalCalories += amount;
  }

  void subtractCalories(int amount) {
    totalCalories = max(0, totalCalories - amount);
  }

  int getCalories(String identifier) {
    return CalorieData.getCalories(identifier);
  }

  // Calendar Page

  DateTime today = DateTime.now();
  DateTime firstDay = DateTime.now().subtract(Duration(days: 365));
  DateTime lastDay = DateTime.now().add(Duration(days: 1826));
  Map<DateTime, List<Event>> events = {};
  TextEditingController eventController = TextEditingController();
  late ValueNotifier<List<Event>> selectedEvents = ValueNotifier(getEventsForDay(today));

  List<Event> getEventsForDay(DateTime day) {
    return events[day] ?? [];
  }

  void onDaySelected(DateTime day, DateTime focusedDay) {
    if (!isSameDay(today, day)) {
      today = day;
      selectedEvents.value = getEventsForDay(day);
    }
  }
}

// Workout Model for Workout View

class WorkoutModel {

  final Distance distance = const Distance();
  Position? position;
  List totalDistance = [];
  double distanceRan = 0.0;
  int seconds = 0,
      minutes = 0,
      hours = 0,
      newSeconds = 0,
      newMinutes = 0,
      newHours = 0;
  String digitSeconds = "00",
      digitMinutes = "00",
      digitHours = "00";
  Timer? timer;
  bool timerStarted = false;
  List laps = [];
  String time = "00:00:00";
  bool isWorkoutStarted = false;

  WorkoutModel();

  /**
   * Gets the current lattitude and longitude of the user, adds it to the total distance and calculates the total distance.
   * @author: Ethan Schroers
   * @param: none
   * @return: none
   */

  void getCurrentPosition() async {
    LocationPermission permission;
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      throw Exception("Location Not Available");
    }
    else {
      position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high
      );
    }
    addToTotalDistance();
    totalDistanceCalculator();
  }

  /**
   * Adds the position to the array 'totalDistance'.
   * @author: Ethan Schroers
   * @param: none
   * @return: none
   */

  void addToTotalDistance() {
    totalDistance.add(position);
  }

  /**
   * Calculates the total distance travelled during a workout.
   * @author: Ethan Schroers
   * @param: none
   * @return: none
   */

  void totalDistanceCalculator() {
    if (totalDistance.length > 1) {
      for (int i = totalDistance.length - 1; i < totalDistance.length; i++) {
        Position p1 = totalDistance[i - 1];
        Position p2 = totalDistance[i];
        distanceRan += distance.as(
            LengthUnit.Mile, LatLng(p1.latitude, p1.longitude),
            LatLng(p2.latitude, p2.longitude));
      }
    }
  }

  /**
   * Adds 1 second to the time and calculates the total time on the timer.
   * @author: Ethan Schroers
   * @param: none
   * @return: none
   */

  void setTime() {
    newSeconds = seconds + 1;
    newMinutes = minutes;
    newHours = hours;
    if (newSeconds > 59) {
      if (newMinutes > 59) {
        newHours++;
        newMinutes = 0;
      }
      else {
        newMinutes++;
        newSeconds = 0;
      }
    }
    seconds = newSeconds;
    minutes = newMinutes;
    hours = newHours;
    digitSeconds = (seconds >= 10) ? "$seconds" : "0$seconds";
    digitMinutes = (minutes >= 10) ? "$minutes" : "0$minutes";
    digitHours = (hours >= 10) ? "$hours" : "0$hours";
  }

  /**
   * Returns the total distance as a string.
   * @author: Ethan Schroers
   * @param: none
   * @return: "$distanceRan"
   */

  String getDistanceRan() {
    return "$distanceRan";
  }

  /**
   * Returns if the workout is started or not.
   * @author: Ethan Schroers
   * @param: none
   * @return: isWorkoutStarted
   */

  bool getIsWorkoutStarted() {
    return isWorkoutStarted;
  }

  /**
   * Returns the total number of laps the user has during a workout.
   * @author: Ethan Schroers
   * @param: none
   * @return: none
   */

  List getLaps() {
    return laps;
  }

  /**
   * Sets 'time' to the current calculated time and returns it.
   * @author: Ethan Schroers
   * @param: none
   * @return: String time
   */

  String getTime() {
    time = "$digitHours:$digitMinutes:$digitSeconds";
    return time;
  }

  /**
   * Stops the timer and sets timerStarted to false.
   * @author: Ethan Schroers
   * @param: none
   * @return: none
   */

  void stopTimer(Timer? timer) {
    timer!.cancel();
    timerStarted = false;
  }

  /**
   * Resets the timer to 00:00:00 and resets all laps created by user.
   * @author: Ethan Schroers
   * @param: none
   * @return: none
   */

  void resetTimer(Timer? timer) {
    timer!.cancel();
    seconds = 0;
    minutes = 0;
    hours = 0;
    digitSeconds = "00";
    digitMinutes = "00";
    digitHours = "00";
    timerStarted = false;
    resetLaps();
  }

  /**
   * Resets all laps created by the user
   * @author: Ethan Schroers
   * @param: none
   * @return: none
   */

  void resetLaps() {
    laps = [];
  }

  /**
   * Adds a lap to the 'laps' array with the current time.
   * @author: Ethan Schroers
   * @param: none
   * @return: none
   */

  void addLaps() {
    String lap = "$digitHours:$digitMinutes:$digitSeconds";
    laps.add(lap);
  }

  /**
   * Returns if the timer is started or not.
   * @author: Ethan Schroers
   * @param: none
   * @return: !timerStarted
   */

  bool isTimerStarted() {
    return !timerStarted;
  }

  /**
   * Starts the timer at the start of the workout
   * @author: Ethan Schroers
   * @param: none
   * @return: none
   */

  void startTimer() {
    timerStarted = true;
    if (timerStarted) {
      setTime();
    }
  }
}

// Home page data for the home page view

class HomePage{
  final TextEditingController stepGoalController = TextEditingController();
  late Stream<StepCount> _stepCountStream;
  int stepCount = 0;
  int goal = 10000;
  double stepsPercent = 0;
  double caloriesBurned = 0;
  double milesWalked = 0;
  int stepCountOffset = 0;

  /**
   * Returns the TextEditingController.
   * @author: Ethan Schroers
   * @param: none
   * @return: stepGoalController
   */

  TextEditingController getStepGoalController() {
    return stepGoalController;
  }

  /**
   * Validates the input for a new step goal.
   * @author: Ethan Schroers
   * @param: none
   * @return: amount != null && amount > 0
   */

  bool isInputValid() {
    final int? amount = int.tryParse(stepGoalController.text);
    return amount != null && amount > 0;
  }

  /**
   * Updates the user's step goal and calls updateStepsPercent().
   * @author: Ethan Schroers
   * @param: newGoal
   * @return: none
   */

  void updateStepGoal(int newGoal){
    goal = newGoal;
    stepGoalController.clear();
    updateStepsPercent();
  }

  void updateStepsPercent() {
    double stepsToInt = double.parse(stepCount.toString());
    if (stepsToInt > goal) {
      stepsPercent = 1;
    }
    else {
      stepsPercent = double.parse(stepCount.toString()) / goal;
    }
  }

  /**
   * Updates the daily step count on the pedometer.
   * @author: Ethan Schroers
   * @param: StepCount event
   * @return: none
   */

  void onStepCount(StepCount event) {
    if (stepCountOffset == 0) {
      stepCountOffset = event.steps;
    }
    else {
      stepCount = event.steps - stepCountOffset;
    }
  }

  /**
   * Returns the current step goal.
   * @author: Ethan Schroers
   * @param: none
   * @return: none
   */

  int getStepGoal() {
    return goal;
  }

  /**
   * Gets the number of steps since the last reboot.
   * @author: Ethan Schroers
   * @param: none
   * @return: none
   */

  void initPlatformState() {
    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen(onStepCount);
  }

  /**
   * Calculated the number of calories burned with the Pedometer.
   * @author: Ethan Schroers
   * @param: none
   * @return: none
   */

  void calculateCaloriesBurned() {
    caloriesBurned = stepCount / 25;
  }

  /**
   * Calculated the number of miles walked with the Pedometer.
   * @author: Ethan Schroers
   * @param: none
   * @return: none
   */

  void calculateMilesWalked() {
    milesWalked = stepCount / 2000;
  }
}
