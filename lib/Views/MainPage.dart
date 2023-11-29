import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MainPage extends StatelessWidget {

  final Function() getSteps;
  final Function() getStepsPercent;
  final TextEditingController stepGoalController;
  final Function() isInputValid;
  final Function(int) updateStepGoal;
  final Function() getStepGoal;

  MainPage({
    required this.getSteps,
    required this.getStepsPercent,
    required this.stepGoalController,
    required this.isInputValid,
    required this.updateStepGoal,
    required this.getStepGoal

});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF40C4FF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  "Pedometer",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Goal: " + getStepGoal().toString(),
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              CircularPercentIndicator (
                radius: 140,
                lineWidth: 15.0,
                percent: getStepsPercent(),
                progressColor: Colors.indigoAccent,
                center: Text(
                  getSteps(),
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              /*new Container(
                height: 170,
                width: 300,
                child: BarChart(
                  BarChartData(
                    gridData: FlGridData(show: false),
                    maxY: 10000,
                    minY: 0,
                    backgroundColor: Colors.grey,
                    borderData: FlBorderData(show: false),
                    titlesData: FlTitlesData(
                      show: true,
                      topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),

                      //bottomTitles: getBottomTitles
                    ),
                  ),
                ),
              ),*/
              Center(
                child: Column(
                  children: [
                    TextFormField(
                      controller: stepGoalController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Enter Step Goal!',
                        hintText: 'e.g., 10000',
                        enabledBorder: InputBorder.none
                      ),
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
                          size: 25,
                        ),
                    ),
                  ],
                )
              ),
              SizedBox(
                height: 40,
              )
            ]
          ),
        ),
      ),
    );
  }
}
