import 'package:flutter/material.dart';

class Schedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule'),
      ),
      body: Center(
        child: Text('This is the schedule page'),
      ),
      backgroundColor: Colors.lightGreen[100],
    );
  }
}
