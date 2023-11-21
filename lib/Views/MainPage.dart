import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:fl_chart/fl_chart.dart';

class MainPage extends StatelessWidget {

  final Function() getSteps;
  final Function() getStepsPercent;
  final TextEditingController stepGoalController;
  final Function() isInputValid;
  final Function(int) updateStepCount;
  final Function() getStepGoal;

  MainPage({
    required this.getSteps,
    required this.getStepsPercent,
    required this.stepGoalController,
    required this.isInputValid,
    required this.updateStepCount,
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
                  "Get Fit",
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
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Center(
                      child: Icon(Icons.fastfood_outlined),
                    ),
                    Center(
                      child: Text(
                        "  "+"320 Cal",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                    ),
                    Center(
                      widthFactor: 18.0,
                      child: Text(
                        " "
                      ),
                    ),
                    Center(
                      child: Icon(Icons.snowshoeing),
                    ),
                    Center(
                      child: Text(
                        "  "+"3.2 Mi",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                    )
                  ],
                ),
              ),*/
              SizedBox(
                height: 30,
              ),
              new Container(
                height: 200,
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
                        enabledBorder: InputBorder.none
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (isInputValid()) {
                            updateStepCount(int.parse(stepGoalController.text));
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
                height: 30,
              )
            ]
          ),
        ),
      ),
    );
    /*return Center(
      child: Text('GetFit', textAlign: TextAlign.center),
    );*/
  }
}
