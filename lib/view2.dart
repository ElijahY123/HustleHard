import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:core';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'GetFit',
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: MuscleGroupsPage(),
    );
    }
}

class MuscleGroupsPage extends StatefulWidget{

  @override
  _MuscleGroupsPageState createState() => _MuscleGroupsPageState();
}

class _MuscleGroupsPageState extends State<MuscleGroupsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Select Your Specific Muscle Group',
          textAlign: TextAlign.center,
          ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            SizedBox(
              height: 10,
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(
                    MaterialPageRoute(
                        builder: (context) => UpperBodyPage()
                    )
                );
              },
              child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: const Text('Upper Body'),
              ),
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(
                      MaterialPageRoute(
                          builder: (context) => LowerBodyPage()
                      )
                  );
                },
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: const Text('Lower Body'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UpperBodyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Upper Body Exercises',
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .pop();
          },
          child: const Text('Go Back'),
        )
      ),
    );
  }
}

class LowerBodyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lower Body Exercises',
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .pop();
            },
            child: const Text('Go Back'),
          )
      ),
    );
    }
}