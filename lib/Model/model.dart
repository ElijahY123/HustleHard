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

// Individual bar data

class IndividualBar {
  final int x;
  final double y;

  IndividualBar({
    required this.x,
    required this.y
  });
}

 // Bar Data for steps in the firebase

class BarData {
  final double sunSteps;
  final double monSteps;
  final double tueSteps;
  final double wedSteps;
  final double thurSteps;
  final double friSteps;
  final double satSteps;

  BarData({
    required this.sunSteps,
    required this.monSteps,
    required this.tueSteps,
    required this.wedSteps,
    required this.thurSteps,
    required this.friSteps,
    required this.satSteps
  });
  List<IndividualBar> barData = [];

  void initializeBarData() {
    barData = [
      IndividualBar(x: 0, y: sunSteps),
      IndividualBar(x: 0, y: monSteps),
      IndividualBar(x: 0, y: tueSteps),
      IndividualBar(x: 0, y: wedSteps),
      IndividualBar(x: 0, y:thurSteps),
      IndividualBar(x: 0, y: friSteps),
      IndividualBar(x: 0, y: satSteps)
    ];
  }
}

// Home page data for the home page view

class HomePage{
  final TextEditingController stepGoalController = TextEditingController();
  late Stream<StepCount> _stepCountStream;
  String  _steps = '0';
  int goal = 10000;
  double stepsPercent = 0;
  List<double> weeklySteps = [];

  BarData weeklyBarData = BarData(
      sunSteps: 8080,
      monSteps: 9290,
      tueSteps: 2738,
      wedSteps: 9283,
      thurSteps: 9201,
      friSteps: 2910,
      satSteps: 2018
  );

/*  void addStepsToDB(double steps, String date) async {
    FirebaseFirestore.instance.collection('Steps').add({
      'Date' : date,
      'steps' : steps
    });
  }

  void getStepsFromDB(String date) async {
    DatabaseReference ref = FirebaseDatabase.instance.ref("Steps");
    DatabaseEvent event = await ref.once();

    event.snapshot.value;
  }*/

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

    return _steps;
  }

  double getStepsPercent() {
    return stepsPercent;
  }

  void updateStepsPercent() {
    double stepsToInt = double.parse(_steps);
    if (stepsToInt > goal) {
      stepsPercent = 1;
    }
    else {
      stepsPercent = double.parse(_steps) / goal;
    }
  }

  void onStepCount(StepCount event) {
      _steps = event.steps.toString();
  }

  void onStepCountError(error) {
      _steps = 'Step Count not available';
  }

  int getStepGoal() {
    return goal;
  }

  void initPlatformState() {
    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen(onStepCount);
  }
}

