import 'package:firstapp/Views/MuscleGroupsPage.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/Model/model.dart';
import 'package:firstapp/Views/CalorieCounter.dart';
import 'package:firstapp/Views/Workout.dart';
import 'package:firstapp/Views/MainPage.dart';
import 'package:firstapp/Views/Calendar.dart';
import 'package:firstapp/Views/YoutubeView.dart';
import 'dart:async';
import 'package:firstapp/Views/Routine.dart';

class FitnessController extends StatefulWidget {
  @override
  State<FitnessController> createState() => _FitnessControllerState();
}

class _FitnessControllerState extends State<FitnessController> {
  final FitnessModel model = FitnessModel();
  final WorkoutModel workoutModel = WorkoutModel();
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
        builder: (context) => YoutubeView(videoInfos: videoInfos, onWatchYoutube: navigateToYoutubeView),
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

  void openRail(){
    scaffoldKey.currentState!.openDrawer();
  }

  void closeRail(){
    Navigator.of(context).pop();
  }

  SelectedPage pageSelected = SelectedPage();

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (pageSelected.getSelectedIndex()) {
      case 0:
        page = MainPage();
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
                subtractCalories(-calories); // If exercise, subtract its calorie value
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
        List<VideoInfo> videoInfos = [
          // Back and Biceps
          VideoInfo(topic: 'Back and Biceps', videoName: 'Preacher Curls', videoUrl: 'https://www.youtube.com/watch?v=fIWP-FRFNU0&ab_channel=KAGED'),
          VideoInfo(topic: 'Back and Biceps', videoName: 'Dumbbell Curls', videoUrl: 'https://www.youtube.com/watch?v=ykJmrZ5v0Oo&ab_channel=Howcast'),
          VideoInfo(topic: 'Back and Biceps', videoName: 'Lat Pulldowns', videoUrl: 'https://www.youtube.com/watch?v=SALxEARiMkw&ab_channel=ATHLEAN-X%E2%84%A2'),
          VideoInfo(topic: 'Back and Biceps', videoName: 'Seated Row', videoUrl: 'https://www.youtube.com/watch?v=GZbfZ033f74&ab_channel=ScottHermanFitness'),
          VideoInfo(topic: 'Back and Biceps', videoName: 'Barbell Row', videoUrl: 'https://www.youtube.com/watch?v=FWJR5Ve8bnQ&ab_channel=MaxEuceda'),
          VideoInfo(topic: 'Back and Biceps', videoName: 'Single Arm Pulldown', videoUrl: 'https://www.youtube.com/watch?v=0BT533ueEdI&ab_channel=ChrisandEricMartinez'),
          VideoInfo(topic: 'Back and Biceps', videoName: 'Facepulls', videoUrl: 'https://www.youtube.com/watch?v=V8dZ3pyiCBo&ab_channel=KAGED'),
          // Chest, Shoulder, and Triceps
          VideoInfo(topic: 'Chest, Shoulders, and Triceps', videoName: 'Dumbbell Skull Crusher', videoUrl: 'https://www.youtube.com/watch?v=ir5PsbniVSc&ab_channel=ScottHermanFitness'),
          VideoInfo(topic: 'Chest, Shoulders, and Triceps', videoName: 'Dumbbell Bench', videoUrl: 'https://www.youtube.com/watch?v=VmB1G1K7v94&ab_channel=ScottHermanFitness'),
          VideoInfo(topic: 'Chest, Shoulders, and Triceps', videoName: 'Barbell Bench', videoUrl: 'https://www.youtube.com/watch?v=rT7DgCr-3pg&ab_channel=ScottHermanFitness'),
          VideoInfo(topic: 'Chest, Shoulders, and Triceps', videoName: 'Incline Dumbbell Bench', videoUrl: 'https://www.youtube.com/watch?v=8iPEnn-ltC8&ab_channel=ScottHermanFitness'),
          VideoInfo(topic: 'Chest, Shoulders, and Triceps', videoName: 'Millitary Press', videoUrl: 'https://www.youtube.com/watch?v=2yjwXTZQDDI&ab_channel=ScottHermanFitness'),
          VideoInfo(topic: 'Chest, Shoulders, and Triceps', videoName: 'Dumbbell Chest Flys', videoUrl: 'https://www.youtube.com/watch?v=eozdVDA78K0&ab_channel=ScottHermanFitness'),
          // Legs
          VideoInfo(topic: 'Legs', videoName: 'Barbell Squats', videoUrl: 'https://www.youtube.com/watch?v=1oed-UmAxFs&ab_channel=ScottHermanFitness'),
          VideoInfo(topic: 'Legs', videoName: 'Leg Extensions', videoUrl: 'https://www.youtube.com/watch?v=ljO4jkwv8wQ&ab_channel=JeffNippard'),
          VideoInfo(topic: 'Legs', videoName: 'Barbell RDL', videoUrl: 'https://www.youtube.com/watch?v=mZxxJEncsyw&ab_channel=TheProactiveAthlete'),
          VideoInfo(topic: 'Legs', videoName: 'Calf Raises', videoUrl: 'https://www.youtube.com/watch?v=wxwY7GXxL4k&ab_channel=Bodybuilding.com'),
          // Core
          VideoInfo(topic: 'Core', videoName: 'Ab Workout', videoUrl: 'https://www.youtube.com/watch?v=h4N_fKnAWL8&ab_channel=OliverSjostrom'),
        ];
        page = YoutubeView(
          videoInfos: videoInfos,
          onWatchYoutube: navigateToYoutubeView,
        );
        break;
      case 6:
        page = RoutineView();
        break;
      default:
        throw UnimplementedError('No page for selected page');
    }


    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            leading: IconButton(
                onPressed: openRail,
                icon: Icon(Icons.menu)),
            title: Text("Hustle Hard"),
          ),
          drawer: Drawer(
          child: Row(
            children: [
              SafeArea(
                child: NavigationDrawer(
                  children: [
                    IconButton(
                        onPressed: closeRail,
                        icon: Icon(Icons.close)),
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
                      icon: Icon(Icons.run_circle_outlined),
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
                        label: Text('Workout Schedule')),
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
