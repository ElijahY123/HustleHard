import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


//ignore: must_be_immutable
class MainPage extends StatelessWidget {

  final Function() getSteps;
  final Function() getStepsPercent;
  final TextEditingController stepGoalController;
  final Function() isInputValid;
  final Function(int) updateStepGoal;
  final Function() getStepGoal;
  final Future<void> Function() refresh;
  String steps;
  double caloriesBurned;
  double milesWalked;
  double stepsPercent;

  MainPage({
    required this.getSteps,
    required this.getStepsPercent,
    required this.stepGoalController,
    required this.isInputValid,
    required this.updateStepGoal,
    required this.getStepGoal,
    required this.refresh,
    required this.steps,
    required this.caloriesBurned,
    required this.milesWalked,
    required this.stepsPercent
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38, //Color(0xFF40C4FF),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: refresh,
          child: ListView(
            children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                CircularPercentIndicator(
                  radius: 140,
                  lineWidth: 15.0,
                  percent: stepsPercent,
                  progressColor: Colors.lightBlueAccent,
                  center: FaIcon(
                    FontAwesomeIcons.personRunning,
                    color: Colors.white,
                    size: 140,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 70,
                  child: Text(
                        steps,
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                  ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 20,
                  child: Text(
                    "/ " + getStepGoal().toString() + " Steps",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Icon(
                          Icons.fastfood,
                          color: Colors.white,
                        ),
                      ),
                      Center(
                        child: Text(
                            " Cal: " + caloriesBurned.toString(),
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Center(
                        child: Icon(
                          Icons.sports_football,
                          color: Colors.white,
                        ),
                      ),
                      Center(
                        child: Text(
                          " Mi: " + milesWalked.toString(),
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: stepGoalController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Enter Step Goal!',
                          hintText: 'e.g., 10000',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 4.0
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            if (isInputValid()) {
                              updateStepGoal(int.parse(stepGoalController.text));
                            }
                            else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Input Invalid"),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            }
                          },
                          style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all(Size(50, 50)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            )),
                          ),
                          child: Icon(
                              Icons.add,
                            size: 40,
                          ),
                      ),
                    ],
                  )
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "** Pull Down To Refresh **",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),
                ),
              ],
            ),
          ),
            ],
          ),
        ),
      ),
    );
  }
}
