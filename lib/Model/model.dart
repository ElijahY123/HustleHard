import 'dart:async';
import 'package:firebase_database/firebase_database.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import "package:table_calendar/table_calendar.dart";
import "package:flutter/cupertino.dart";
import "Event.dart";
import 'package:pedometer/pedometer.dart';
import 'dart:math';
import 'CalorieData.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SelectedPage {

  var selectedIndex = 0;

  void updateSelectedIndex(var newIndex){
    selectedIndex = newIndex;
  }

  getSelectedIndex()  {
    return selectedIndex;
}

}

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

  void getCurrentPosition() async {
    position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high
    );
    addToTotalDistance();
    totalDistanceCalculator();
  }

  void addToTotalDistance() {
    totalDistance.add(position);
  }

  void totalDistanceCalculator() {
    if (totalDistance.length > 1) {
      for (int i = totalDistance.length - 1; i < totalDistance.length; i++) {
        Position p1 = totalDistance[i - 1];
        Position p2 = totalDistance[i];
        distanceRan = distance.as(
            LengthUnit.Mile, LatLng(p1.latitude, p1.longitude),
            LatLng(p2.latitude, p2.longitude));
      }
    }
  }

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

  String getDistanceRan() {
    return "$distanceRan";
  }

  bool getIsWorkoutStarted() {
    return isWorkoutStarted;
  }

  List getLaps() {
    return laps;
  }

  String getTime() {
    time = "$digitHours:$digitMinutes:$digitSeconds";
    return time;
  }


  void stopTimer(Timer? timer) {
    timer!.cancel();
    timerStarted = false;
  }

  void resetTimer(Timer? timer) {
    timer!.cancel();
//    setState(() {
    seconds = 0;
    minutes = 0;
    hours = 0;
    digitSeconds = "00";
    digitMinutes = "00";
    digitHours = "00";
    timerStarted = false;
    resetLaps();
//    });
  }

  void resetLaps() {
    laps = [];
  }

  void addLaps() {
    String lap = "$digitHours:$digitMinutes:$digitSeconds";
    laps.add(lap);
  }

  bool isTimerStarted() {
    return !timerStarted;
  }

  void startTimer() {
    timerStarted = true;
    if (timerStarted) {
      setTime();
    }
  }
}


class HomePage{
  final TextEditingController stepGoalController = TextEditingController();
  late Stream<StepCount> _stepCountStream;
  int stepCount = 0;
  String  _steps = '0';
  int goal = 10000;
  double stepsPercent = 0;

  TextEditingController getStepGoalController() {
    return stepGoalController;
  }

  bool isInputValid() {
    final int? amount = int.tryParse(stepGoalController.text);
    return amount != null && amount > 0;
  }

  void updateStepGoal(int newGoal){
    goal = newGoal;
    stepGoalController.clear();
    updateStepsPercent();
  }

  String getSteps() {
    return stepCount.toString();
  }

  double getStepsPercent() {
    return stepsPercent;
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

  void onStepCount(StepCount event) {
    stepCount = event.steps;
  }

  void onStepCountError(error) {
    //setState
    _steps = 'Step Count not available';
  }

  int getStepGoal() {
    return goal;
  }

  void initPlatformState() {
    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen(onStepCount).onError(onStepCountError);
  }
}

