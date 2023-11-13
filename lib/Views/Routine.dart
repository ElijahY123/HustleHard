//import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoutineView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Workout Routines'),
     ),

     body: Center(
    child: Table(
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
                child: Text('Workout schedule for Arms'),
               ),
             ),
             TableCell(
               verticalAlignment: TableCellVerticalAlignment.top,
               child: Container(
                 child: Text('Workout schedule for Legs'),
               ),
             ),
             Container(
               child: Center(
                 child: Text('Workout schedule for Core')
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
                 child: Text('Monday'),
               ),
             ),
             Container(
               child: Center(
                 child: Text('Monday')
               ),
             ),
             Container(
               child: Center(
                   child: Text('Monday')
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
                 child: Text('Tuesday')
               ),
             ),
             Container(
               child: Center(
                 child: Text('Tuesday')
               ),
             ),
             Container(
               child: Center(
                 child: Text('Tuesday')
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
                   child: Text('Wednesday')
               ),
             ),
             Container(
               child: Center(
                   child: Text('Wednesday')
               ),
             ),
             Container(
               child: Center(
                   child: Text('Wednesday')
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
                   child: Text('Thursday')
               ),
             ),
             Container(
               child: Center(
                   child: Text('Thursday')
               ),
             ),
             Container(
               child: Center(
                   child: Text('Thursday')
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
                   child: Text('Friday')
               ),
             ),
             Container(
               child: Center(
                   child: Text('Friday')
               ),
             ),
             Container(
               child: Center(
                   child: Text('Friday')
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
                   child: Text('Saturday')
               ),
             ),
             Container(
               child: Center(
                   child: Text('Saturday')
               ),
             ),
             Container(
               child: Center(
                   child: Text('Saturday')
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
                   child: Text('Sunday')
               ),
             ),
             Container(
               child: Center(
                   child: Text('Sunday')
               ),
             ),
             Container(
               child: Center(
                   child: Text('Sunday')
               ),
             ),
           ],
         ),
       ],
     ),
     ),
   );
  }
}