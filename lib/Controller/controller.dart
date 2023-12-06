import 'package:firstapp/Views/Announcements.dart';
import 'package:firstapp/Views/MuscleGroupsPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Model/model.dart';
import '../Views/CalorieCounter.dart';
import '../Views/Workout.dart';
import 'package:firstapp/Views/MainPage.dart';
import 'package:firstapp/Views/Calendar.dart';
import 'package:firstapp/Views/YoutubeView.dart';
import 'dart:async';
import 'package:firstapp/Views/Routine.dart';
import '../Model/VideoRepository.dart';

class FitnessController extends StatefulWidget {
  @override
  State<FitnessController> createState() => _FitnessControllerState();
}

class _FitnessControllerState extends State<FitnessController> {
  final FitnessModel model = FitnessModel();
  final WorkoutModel workoutModel = WorkoutModel();
  final HomePage homeModel = HomePage();
  final TextEditingController caloriesInputController = TextEditingController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  String errorMessage = '';
  Timer? timer;

  // Calorie Page

  void addCalories(int calories) {
    setState(() {
      model.addCalories(calories);
    });
  }

  void subtractCalories(int calories) {
    setState(() {
      model.subtractCalories(calories);
    });
  }

  // Youtube videos page

  void navigateToYoutubeView(List<VideoInfo> videoInfos) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => YoutubeView(
            videoInfos: videoInfos, onWatchYoutube: navigateToYoutubeView),
      ),
    );
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
    workoutModel.setTime();
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


  // Navigation Drawer

  void openRail() {
    scaffoldKey.currentState!.openDrawer();
  }

  void closeRail() {
    Navigator.of(context).pop();
  }
  //Main Page

  @override
  void initState() {
    super.initState();
      initMainPageState();
  }

  void initMainPageState() {
    setState(() {
      homeModel.initPlatformState();
    });
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

  void initPlatformState() {
    homeModel.initPlatformState();
  }

  Future<void> refresh() {
    setState(() {
      homeModel.calculateCaloriesBurned();
      homeModel.calculateMilesWalked();
    });
    return Future.delayed(Duration(seconds: 1));
  }

  // Navigation Rail

  // Announcements
  /**
       void updateErrorHandler(var e, String error) {
       setState(() {
       adminLogin.errorHandler(e, error, context);
       e = " ";
       error = " ";
       });
       }
>>>>>>> main

       void updateAnnouncementControllers() {
       setState(() {
       adminLogin.usernameController.clear();
       adminLogin.passwordController.clear();
       //      adminMessgaing.textController.clear();
       });
       }
    **/

  // Navigation Rail
  SelectedPage pageSelected = SelectedPage();

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (pageSelected.getSelectedIndex()) {
      case 0:
        page = MainPage(
          getStepsPercent: getStepsPercent,
          stepGoalController: getStepGoalController(),
          isInputValid: isInputValid,
          updateStepGoal: updateStepGoal,
          getStepGoal: getStepGoal,
          refresh: refresh,
          steps: homeModel.stepCount.toString(),
          caloriesBurned: homeModel.caloriesBurned,
          milesWalked: homeModel.milesWalked,
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
          errorMessage: errorMessage,
          onSubmit: (String item, int calories) {
            if (item == 'Manual Entry') {
              // Directly use the provided calorie count for manual entries
              if (calories < 0) {
                subtractCalories(-calories);
              } else {
                addCalories(calories);
              }
            } else {
              // For items from the database, determine if it's food or exercise
              if (calories < 0) {
                subtractCalories(
                    -calories); // If exercise, subtract its calorie value
              } else {
                addCalories(calories); // If food, add its calorie value
              }
            }
          },
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
      case 5:
        page = YoutubeView(
          videoInfos: VideoRepository.videoInfos,
          onWatchYoutube: navigateToYoutubeView,
        );
        break;
      case 6:
        page = RoutineView();
        break;
      case 7:
        page = SelectUser();
        break;
      default:
        throw UnimplementedError('No page for selected page');
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            leading: IconButton(onPressed: openRail, icon: Icon(Icons.menu)),
            centerTitle: true,
            title: Text(
                "Hustle Hard",
              style: GoogleFonts.bungeeShade(
                textStyle: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          drawer: Drawer(
            child: Row(
              children: [
                SafeArea(
                  child: NavigationDrawer(
                    children: [
                      IconButton(onPressed: closeRail, icon: Icon(Icons.close)),
                      NavigationDrawerDestination(
                        icon: Icon(Icons.home),
                        label: Text('Home Page'),
                      ),
                      NavigationDrawerDestination(
                        icon: Icon(Icons.calendar_month),
                        label: Text('Calendar Page'),
                      ),
                      NavigationDrawerDestination(
                        icon: Icon(Icons.fastfood),
                        label: Text('Calorie Counter'),
                      ),
                      NavigationDrawerDestination(
                        icon: Icon(Icons.info_outline),
                        label: Text('Workouts'),
                      ),
                      NavigationDrawerDestination(
                        icon: Icon(Icons.fitness_center),
                        label: Text("Start Workout"),
                      ),
                      NavigationDrawerDestination(
                        icon: Icon(Icons.play_arrow),
                        label: Text("Video Guides"),
                      ),
                      NavigationDrawerDestination(
                          icon: Icon(Icons.table_chart),
                          label: Text('Workout Schedule')
                      ),
                      NavigationDrawerDestination(
                        icon: Icon(Icons.message_outlined),
                        label: Text("Announcements"),
                      ),
                    ],
                    selectedIndex: pageSelected.getSelectedIndex(),
                    onDestinationSelected: (value) {
                      setState(() {
                        pageSelected.updateSelectedIndex(value);
                      }); //SetState
                    }, // onDestinationSelected
                  ),
                ),
              ], // children
            ),
          ),
          body: Container(
            color: Theme.of(context).colorScheme.primaryContainer,
            child: page,
          ),
        );
      }, // Builder
    );
  } // Widget Build
} // Class _FitnessController
