import 'package:firstapp/Views/MuscleGroupsPage.dart';
import 'package:flutter/material.dart';
import 'package:pedometer/pedometer.dart';
import '../Model/model.dart';
import '../Views/CalorieCounter.dart';
import '../Views/Workout.dart';
import 'package:firstapp/Views/MainPage.dart';
import 'package:firstapp/Views/Calendar.dart';
import 'dart:async';

class FitnessController extends StatefulWidget {
  @override
  State<FitnessController> createState() => _FitnessControllerState();
}

class _FitnessControllerState extends State<FitnessController> {
  final FitnessModel model = FitnessModel();
  final WorkoutModel workoutModel = WorkoutModel();
  final HomePage homeModel = HomePage();
  final TextEditingController caloriesInputController = TextEditingController();
  String errorMessage = '';
  Timer? timer;

  // Calorie Page

  void addCalories(int amount) {
    setState(() {
      model.addCalories(amount);
      caloriesInputController.clear();
      errorMessage = '';
    });
  }

  // WorkoutModel

  List getLaps() {
    return workoutModel.getLaps();
  }

  bool isTimerStarted() {
    return workoutModel.isTimerStarted();
  }

  void stopStopwatch() {
    setState(() {
      workoutModel.stopTimer(timer);
    });
  }

  void resetStopwatch() {
    setState(() {
      workoutModel.resetTimer(timer);
    });
  }

  void addLaps() {
    setState(() {
      workoutModel.addLaps();
    });
  }

  void startStopwatch() {
    setState(() {
      workoutModel.startTimer();
      timer = Timer.periodic(const Duration(seconds: 1), (timer) {
          setState(() {
            setTime();
          });
          getCurrentPosition();
      });
    });
  }

  String getTime() {
    return workoutModel.getTime();
  }


  String getDistanceRan() {
    return workoutModel.getDistanceRan();
  }


  bool getIsWorkoutStarted() {
    return workoutModel.getIsWorkoutStarted();
  }

  void setTime() {
//       setState(() {
         workoutModel.setTime();
//    });
  }

  void getCurrentPosition() {
    workoutModel.getCurrentPosition();
  }


  // Calendar Page

  void onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      model.onDaySelected(day, focusedDay);
    });
  }

  //Main Page

  void initMainPageState() {
    setState(() {
      homeModel.initPlatformState();
    });
  }

  String getSteps() {
    return homeModel.getSteps();
  }

  double getStepsPercent() {
    return homeModel.getStepsPercent();
  }

  TextEditingController getStepGoalController() {
    return homeModel.getStepGoalController();
  }

  void updateStepGoal(int goal){
    setState(() {
      homeModel.updateStepGoal(goal);
    });
  }

  int getStepGoal() {
    return homeModel.getStepGoal();
  }
  bool isInputValid() {
    return homeModel.isInputValid();
  }

  SelectedPage pageSelected = SelectedPage();

    @override
    Widget build(BuildContext context) {
      Widget page;
      switch (pageSelected.getSelectedIndex()) {
        case 0:
          page = MainPage(
            getSteps: getSteps,
            getStepsPercent: getStepsPercent,
            stepGoalController: getStepGoalController(),
            isInputValid: isInputValid,
            updateStepCount: updateStepGoal,
            getStepGoal: getStepGoal,
          );
          break;
        case 1:
          page = Calendar(
            today: model.today,
            firstDay: model.firstDay,
            lastDay: model.lastDay,
            onDaySelected: onDaySelected,
            events: model.events,
            eventController: model.eventController,
            selectedEvents: model.selectedEvents,
            getEventsForDay: model.getEventsForDay,
          );
          break;
        case 2:
          page = CalorieCounterView(
            totalCalories: model.totalCalories,
            caloriesInputController: caloriesInputController,
            errorMessage: errorMessage,
            onAddCalories: addCalories,
          );
          break;
        case 3:
          page = MuscleGroupsPage();
          break;
        case 4:
          page = WorkoutView(
            getTime: getTime,
            getLaps: getLaps,
            stopStopwatch: stopStopwatch,
            resetStopwatch: resetStopwatch,
            startStopwatch: startStopwatch,
            getDistanceRan: getDistanceRan,
            addLaps: addLaps,
            isTimerStarted: isTimerStarted,
            getIsWorkoutStarted: getIsWorkoutStarted,
            setTime: setTime,
          );
          break;
        default:
          throw UnimplementedError('No page for selected page');
    }

      return LayoutBuilder(
        builder: (context, constraints) {
          return Scaffold(
            body: Row(
              children: [
                SafeArea(
                  child: NavigationRail(
                    extended: constraints.maxWidth >= 600,
                    destinations: [
                      NavigationRailDestination(
                        icon: Icon(Icons.home),
                        label: Text('Home Page'),
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.calendar_month),
                        label: Text('Calendar Page'),
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.fastfood),
                        label: Text('Calorie Counter'),
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.run_circle_outlined),
                        label: Text('Workouts'),
                      ),
                      NavigationRailDestination(
                          icon: Icon(Icons.fitness_center),
                          label: Text("Start Workout")
                      ),
                    ],
                    selectedIndex: pageSelected.getSelectedIndex(),
                    onDestinationSelected: (value) {
                      setState(() {
                        pageSelected.updateSelectedIndex(value);
                      });
                    },
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Theme
                        .of(context)
                        .colorScheme
                        .primaryContainer,
                    child: page,
                  ),
                ),
              ],
            ),
          );
        },
      );
    }
  }

