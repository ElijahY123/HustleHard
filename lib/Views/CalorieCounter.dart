import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Main Page'),
    );
  }
}

class PlaceHolderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Placeholder Page'),
    );
  }
}

class CalorieCounterView extends StatelessWidget {
  final int totalCalories;
  final TextEditingController caloriesInputController;
  final String errorMessage;
  final Function(int) onAddCalories;

  CalorieCounterView({
    required this.totalCalories,
    required this.caloriesInputController,
    required this.errorMessage,
    required this.onAddCalories,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calorie Counter'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.lightGreen[100],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total Calories for the Day:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'YourCustomFont', // Replace with your custom font
                ),
              ),
              Text(
                '$totalCalories',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      int? amount = int.tryParse(caloriesInputController.text);
                      if (amount != null && amount > 0) {
                        onAddCalories(amount);
                      } else {
                        // Handle error
                      }
                    },
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(50, 50)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                    ),
                    child: Icon(Icons.add, size: 40),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      int? amount = int.tryParse(caloriesInputController.text);
                      if (amount != null && amount > 0) {
                        onAddCalories(-amount);
                      } else {
                        // Handle error
                      }
                    },
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(50, 50)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                    ),
                    child: Icon(Icons.remove, size: 40),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: caloriesInputController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Enter Calories',
                          hintText: 'e.g., 200',
                        ),
                      ),
                      if (errorMessage.isNotEmpty)
                        Text(errorMessage, style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
