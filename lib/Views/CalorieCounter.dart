import 'package:flutter/material.dart';

class CalorieCounter extends StatefulWidget {
  @override
  _CalorieCounterState createState() => _CalorieCounterState();
}

class _CalorieCounterState extends State<CalorieCounter> {
  int totalCalories = 0;

  void addCalories(int amount) {
    setState(() {
      totalCalories += amount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calorie Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Total Calories: $totalCalories', style: TextStyle(fontSize: 24)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    addCalories(1); // Add 1 calorie when the plus button is pressed
                  },
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 16), // Add some spacing between the buttons
                ElevatedButton(
                  onPressed: () {
                    addCalories(-1); // Subtract 1 calorie when the minus button is pressed
                  },
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.lightGreen[100],
    );
  }
}
