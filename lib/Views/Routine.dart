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
                    child: Text('Workout schedule for Arms', textScaleFactor: 1.5,),
                   ),
                 ),
                 TableCell(
                   verticalAlignment: TableCellVerticalAlignment.top,
                   child: Container(
                     child: Center(
                      child: Text('Workout schedule for Legs', textScaleFactor: 1.5,),
                     ),
                   ),
                 ),
                 Container(
                   child: Center(
                     child: Text('Workout schedule for Core', textScaleFactor: 1.5,)
                   ),
                 ),
               ],
             ),
             TableRow(
               decoration:  const BoxDecoration(
               ),
               children: <Widget>[
                 Container(
                   child: Center(
                     child: Text('Monday\n' 'Dumbbell Curls\n' 'Scarecrow Extensions\n' 'SpeedBag\n'),
                   ),
                 ),
                 Container(
                   child: Center(
                     child: Text('Monday\n' 'Squats\n' 'Lateral Lung\n' 'Leg Press\n')
                   ),
                 ),
                 Container(
                   child: Center(
                       child: Text('Monday\n' 'Side Bridges\n' 'Raised Leg Hold\n' 'Plank Arm Raises\n')
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
                     child: Text('Tuesday\n' 'Cross Over Extensions\n' 'Hammer Curls\n')
                   ),
                 ),
                 Container(
                   child: Center(
                     child: Text('Tuesday\n' 'Knee Highs\n' 'Single Leg Dead-lift\n' 'Split Squat\n')
                   ),
                 ),
                 Container(
                   child: Center(
                     child: Text('Tuesday\n' 'Push Up Into Lunges\n' 'Knee to Elbows\n' 'Side to Side Chops\n')
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
                       child: Text('Wednesday\n' 'Overhead Triceps Extension\n' 'Side Curls\n')
                   ),
                 ),
                 Container(
                   child: Center(
                       child: Text('Wednesday\n' 'Skater Squat\n' 'Tuck Jump\n' 'Reverse Lung\n')
                   ),
                 ),
                 Container(
                   child: Center(
                       child: Text('Wednesday\n' 'Cross Chops\n' 'High Knees\n' 'Twist Jacks\n')
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
                       child: Text('Thursday\n' 'Around the Worlds\n' 'Seated Curls\n')
                   ),
                 ),
                 Container(
                   child: Center(
                       child: Text('Thursday\n' 'Adductor Leg Raises\n' 'Hamstring Curls\n' 'Romanian Dead-lifts\n')
                   ),
                 ),
                 Container(
                   child: Center(
                       child: Text('Thursday\n' 'Side Leg Raises\n' 'Crunch Kicks\n' 'Raised Leg Circles\n')
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
                       child: Text('Friday\n' 'Upright Row\n' 'Hammer Curls\n' 'Push Ups\n')
                   ),
                 ),
                 Container(
                   child: Center(
                       child: Text('Friday\n' 'Leg Extensions\n' 'Steps\n' 'Squat Jumps\n')
                   ),
                 ),
                 Container(
                   child: Center(
                       child: Text('Friday\n' 'Scissors\n' '20-Count Hold\n' 'Side Elbow Plank\n')
                   ),
                 ),
               ],
             ),
           ],
         ),
       ],
    ),
     ),
   );
  }
}