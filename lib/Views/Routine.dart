import 'package:firstapp/Views/MuscleGroupsPage.dart';
import 'package:flutter/material.dart';

class RoutineView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workout Routines'),
      ),

      body: Center(

        child: ListView(
          children: [
            Table(
              border: TableBorder.all(),
              columnWidths: const <int, TableColumnWidth>{
                0: FlexColumnWidth(),
                1: FlexColumnWidth(),
                2: FlexColumnWidth(),
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: <TableRow>[
                TableRow(
                  children: <Widget>[
                    Container(
                      child: Center(
                        child: Text(
                          'Workout schedule for Arms', textScaleFactor: 1.5,),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.top,
                      child: Container(
                        child: Center(
                          child: Text(
                            'Workout schedule for Legs', textScaleFactor: 1.5,),
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                          child: Text(
                            'Workout schedule for Core', textScaleFactor: 1.5,)
                      ),
                    ),
                  ],
                ),
                TableRow(
                  decoration: const BoxDecoration(
                  ),
                  children: <Widget>[
                    Container(
                      child: Center(
                        child: Text.rich(
                          TextSpan(
                            text: 'Monday\n', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(text: 'Bicep Curls\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: 'Scarecrow Extensions\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: 'SpeedBag\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                          child: Text.rich(
                            TextSpan(
                              text: 'Monday\n', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(text: 'Squats\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                                TextSpan(text: 'Lateral Lunge\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                                TextSpan(text: 'Leg Press\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              ],
                            ),
                          ),
                      ),
                    ),
                    Container(
                      child: Center(
                          child: Text.rich(
                          TextSpan(
                            text: 'Monday\n', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(text: 'Side Bridges\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: 'Raised Leg Hold\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: 'Plank Arm Raises\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  decoration: const BoxDecoration(
                  ),
                  children: <Widget>[
                    Container(
                      child: Center(
                          child: Text.rich(
                          TextSpan(
                            text: 'Tuesday\n', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(text: 'Cross Over Extensions\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: 'Hammer Curls\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                          child: Text.rich(
                          TextSpan(
                            text: 'Tuesday\n', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(text: 'Knee Highs\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: 'Single Leg Dead-Lift\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: 'Split Squat\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                          child: Text.rich(
                          TextSpan(
                            text: 'Tuesday\n', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(text: 'Push Up Into Lunges\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: 'Knee to Elbows\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: 'Side to Side Chops\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  decoration: const BoxDecoration(
                  ),
                  children: <Widget>[
                    Container(
                      child: Center(
                          child: Text.rich(
                          TextSpan(
                            text: 'Wednesday\n', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(text: 'Overhead Triceps Extension\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: 'Side Curls\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: 'Bench Press\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                          child: Text.rich(
                          TextSpan(
                            text: 'Wednesday\n', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(text: 'Skater Squat\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: 'Tuck Jump\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: 'Reverse Lunge\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: 'DeadLift\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                          child: Text.rich(
                          TextSpan(
                            text: 'Wednesday\n', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(text: 'Cross Chops\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: 'High Knees\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: 'Twist Jacks\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  decoration: const BoxDecoration(
                  ),
                  children: <Widget>[
                    Container(
                      child: Center(
                          child: Text.rich(
                          TextSpan(
                            text: 'Thursday\n', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(text: 'Around the Worlds\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: 'Seated Curls\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: 'Pull ups\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                          child: Text.rich(
                          TextSpan(
                            text: 'Thursday\n', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(text: 'Adductor Leg Raises\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: 'Hamstring Curls\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: 'Romanian Dead-Lifts\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                          child: Text.rich(
                          TextSpan(
                            text: 'Thursday\n', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(text: 'Side Leg Raises\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: 'Crunch Kicks\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: 'Raised Leg Circles\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  decoration: const BoxDecoration(
                  ),
                  children: <Widget>[
                    Container(
                      child: Center(
                          child: Text.rich(
                          TextSpan(
                            text: 'Friday\n', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(text: 'Upright Row\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: 'Push Ups\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                          child: Text.rich(
                          TextSpan(
                            text: 'Friday\n', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(text: 'Leg Extensions\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: 'Steps\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: 'Squat Jumps\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                          child: Text.rich(
                          TextSpan(
                            text: 'Friday\n', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(text: 'Scissors\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: '20-Count Hold\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                              TextSpan(text: 'Side Elbow Plank\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter
              , child: ElevatedButton(
              onPressed: (){
              Navigator.of(context).push(
                 MaterialPageRoute(builder: (context) => MuscleGroupsPage())
            );
            },
              child: const Text('Information Page'),
            ),
            ),
          ],
        ),
      ),
    );
  }
}