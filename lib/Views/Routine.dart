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
         0: IntrinsicColumnWidth(),
         1: FlexColumnWidth(),
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
                 child: Text('Workout schedule for Core'),
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
               )
             ),
             Container(
               height: 32,
             ),
           ],
         ),
       ],
     ),
     ),
   );
  }
}