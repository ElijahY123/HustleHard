import 'package:firstapp/Views/MuscleGroupsPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoutineView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.limeAccent,
      appBar: AppBar(
        title: Text('Workout Routines', style: GoogleFonts.abrilFatface(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 35))),
      ),

      body: Center(

        child: ListView(
          children: [
            Table(
              border: TableBorder.all(width: 2),
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
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            'Workout schedule for Arms', textScaleFactor: 1.5, style: GoogleFonts.almendra(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              'Workout schedule for Legs', textScaleFactor: 1.5, style: GoogleFonts.almendra(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                            child: Text(
                              'Workout schedule for Core', textScaleFactor: 1.5, style: GoogleFonts.almendra(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
                            ),
                        ),
                      ),
                    ),
                  ],
                ),

                /// Monday Workouts start here
                TableRow(
                  decoration: const BoxDecoration(
                  ),
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text.rich(
                            TextSpan(
                              text: 'Monday\n', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                              children: <TextSpan>[
                                TextSpan(text: 'Bicep Curls\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                TextSpan(text: 'Scarecrow Extensions\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                TextSpan(text: 'SpeedBag\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                            child: Text.rich(
                              TextSpan(
                                text: 'Monday\n', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                                children: <TextSpan>[
                                  TextSpan(text: 'Squats\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                  TextSpan(text: 'Lateral Lunge\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                  TextSpan(text: 'Leg Press\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                ],
                              ),
                            ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                            child: Text.rich(
                            TextSpan(
                              text: 'Monday\n', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                              children: <TextSpan>[
                                TextSpan(text: 'Side Bridges\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                TextSpan(text: 'Raised Leg Hold\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                TextSpan(text: 'Plank Arm Raises\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                /// Tuesday Workouts Start here
                TableRow(
                  decoration: const BoxDecoration(
                  ),
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                            child: Text.rich(
                            TextSpan(
                              text: 'Tuesday\n', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                              children: <TextSpan>[
                                TextSpan(text: 'Cross Over Extensions\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                TextSpan(text: 'Hammer Curls\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                            child: Text.rich(
                            TextSpan(
                              text: 'Tuesday\n', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                              children: <TextSpan>[
                                TextSpan(text: 'Knee Highs\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                TextSpan(text: 'Single Leg Dead-Lift\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                TextSpan(text: 'Split Squat\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                            child: Text.rich(
                            TextSpan(
                              text: 'Tuesday\n', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                              children: <TextSpan>[
                                TextSpan(text: 'Push Up Into Lunges\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                TextSpan(text: 'Knee to Elbows\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                TextSpan(text: 'Side to Side Chops\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                /// Wednesday Workouts start here
                TableRow(
                  decoration: const BoxDecoration(
                  ),
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                            child: Text.rich(
                            TextSpan(
                              text: 'Wednesday\n', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                              children: <TextSpan>[
                                TextSpan(text: 'Overhead Triceps Extension\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                TextSpan(text: 'Side Curls\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                TextSpan(text: 'Bench Press\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                            child: Text.rich(
                            TextSpan(
                              text: 'Wednesday\n', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                              children: <TextSpan>[
                                TextSpan(text: 'Skater Squat\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                TextSpan(text: 'Tuck Jump\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                TextSpan(text: 'Reverse Lunge\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                TextSpan(text: 'DeadLift\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                            child: Text.rich(
                            TextSpan(
                              text: 'Wednesday\n', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                              children: <TextSpan>[
                                TextSpan(text: 'Cross Chops\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                TextSpan(text: 'High Knees\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                TextSpan(text: 'Twist Jacks\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                /// Thursday Workouts start here
                TableRow(
                  decoration: const BoxDecoration(
                  ),
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                            child: Text.rich(
                            TextSpan(
                              text: 'Thursday\n', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                              children: <TextSpan>[
                                TextSpan(text: 'Around the Worlds\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                TextSpan(text: 'Seated Curls\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                TextSpan(text: 'Pull ups\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                            child: Text.rich(
                            TextSpan(
                              text: 'Thursday\n', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                              children: <TextSpan>[
                                TextSpan(text: 'Adductor Leg Raises\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                TextSpan(text: 'Hamstring Curls\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                TextSpan(text: 'Romanian Dead-Lifts\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                            child: Text.rich(
                            TextSpan(
                              text: 'Thursday\n', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                              children: <TextSpan>[
                                TextSpan(text: 'Side Leg Raises\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                TextSpan(text: 'Crunch Kicks\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                TextSpan(text: 'Raised Leg Circles\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                /// Friday Workouts start here
                TableRow(
                  decoration: const BoxDecoration(
                  ),
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                            child: Text.rich(
                            TextSpan(
                              text: 'Friday\n', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                              children: <TextSpan>[
                                TextSpan(text: 'Upright Row\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                TextSpan(text: 'Push Ups\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                            child: Text.rich(
                            TextSpan(
                              text: 'Friday\n', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                              children: <TextSpan>[
                                TextSpan(text: 'Leg Extensions\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                TextSpan(text: 'Steps\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                TextSpan(text: 'Squat Jumps\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                            child: Text.rich(
                            TextSpan(
                              text: 'Friday\n', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                              children: <TextSpan>[
                                TextSpan(text: 'Scissors\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15, decoration: TextDecoration.none)),
                                TextSpan(text: '20-Count Hold\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                                TextSpan(text: 'Side Elbow Plank\n', style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15,decoration: TextDecoration.none)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            /// Button to go to the information/workouts page
            Align(
              alignment: Alignment.bottomCenter
              , child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: ElevatedButton(
                onPressed: (){
                Navigator.of(context).push(
                   MaterialPageRoute(builder: (context) => MuscleGroupsPage())
            );
            },
                child: const Text('Information Page', style: TextStyle(fontSize: 30),),
            ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}