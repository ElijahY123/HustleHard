import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
      ),
      body: Center(
        child: Text('This is the Calendar page'),
      ),
      backgroundColor: Colors.lightGreen[100],

    );
  }
}
