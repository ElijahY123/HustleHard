import 'package:firstapp/Views/MuscleGroupsPage.dart';
import 'CalorieCounter.dart';
import 'Calendar.dart';
import 'MuscleGroupsPage.dart';
import 'package:firstapp/Controller/controller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
      ),
      home: FitnessController(),
    );
  }
}
