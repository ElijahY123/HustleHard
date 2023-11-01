import 'package:flutter/material.dart';

class CalorieCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calorie Counter'),
      ),
      body: Center(
        child: Text('This is the Calorie Counter page'),
      ),
      backgroundColor: Colors.lightGreen[100],
    );
  }
}
