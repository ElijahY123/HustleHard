import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Model/CalorieData.dart'; // Import CalorieData

class CalorieCounterView extends StatefulWidget {
  final int totalCalories;
  final Function(String, int) onSubmit;
  final String errorMessage;

  CalorieCounterView({
    required this.totalCalories,
    required this.onSubmit,
    required this.errorMessage,
  });

  @override
  _CalorieCounterViewState createState() => _CalorieCounterViewState();
}

class _CalorieCounterViewState extends State<CalorieCounterView> {
  final TextEditingController typeAheadController = TextEditingController();
  final TextEditingController manualEntryController = TextEditingController();
  final TextEditingController calorieGoalController = TextEditingController(text: '2000'); // Default goal
  int calorieGoal = 2000; // Default goal

  @override
  Widget build(BuildContext context) {
    double calorieProgress = widget.totalCalories / calorieGoal; // Use dynamic calorie goal

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calorie Counter',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.greenAccent,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: _showCalorieGoalDialog,
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Total Daily Calories:',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.greenAccent,
                  ),
                ),
                SizedBox(height: 10),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: CircularProgressIndicator(
                        value: calorieProgress,
                        backgroundColor: Colors.grey[300],
                        color: Colors.greenAccent,
                        strokeWidth: 12,
                      ),
                    ),
                    Text(
                      '${widget.totalCalories} / $calorieGoal',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Estimated /serving size & /hr of exercise',
                  style: TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 20),
                _buildTypeAheadFormField(),
                SizedBox(height: 20),
                _buildManualEntryField(),
                SizedBox(height: 20),
                _buildSubmitButton(),
                SizedBox(height: 20),
                _buildErrorMessage(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTypeAheadFormField() {
    return TypeAheadFormField(
      textFieldConfiguration: TextFieldConfiguration(
        controller: typeAheadController,
        decoration: _inputDecoration('Search Food/Exercise'),
      ),
      suggestionsCallback: (pattern) {
        return CalorieData.searchItems(pattern);
      },
      itemBuilder: (context, suggestion) {
        return ListTile(
          title: Text(suggestion),
        );
      },
      onSuggestionSelected: (suggestion) {
        typeAheadController.text = suggestion;
      },
    );
  }

  Widget _buildManualEntryField() {
    return TextField(
      controller: manualEntryController,
      keyboardType: TextInputType.number,
      decoration: _inputDecoration('Enter Calories Manually (+/-)'),
    );
  }

  Widget _buildSubmitButton() {
    return ElevatedButton(
      onPressed: () {
        if (typeAheadController.text.isNotEmpty) {
          widget.onSubmit(typeAheadController.text, CalorieData.getCalories(typeAheadController.text));
        } else if (manualEntryController.text.isNotEmpty) {
          widget.onSubmit('Manual Entry', int.parse(manualEntryController.text));
        }
        typeAheadController.clear();
        manualEntryController.clear();
      },
      child: Text('Submit'),
      style: ElevatedButton.styleFrom(
        primary: Colors.greenAccent, // New button color
        onPrimary: Colors.white, // Text color
        textStyle: GoogleFonts.poppins(), // Custom font for button
      ),
    );
  }

  Widget _buildErrorMessage() {
    return widget.errorMessage.isNotEmpty
        ? Text(
      widget.errorMessage,
      style: TextStyle(color: Colors.red),
    )
        : Container();
  }

  InputDecoration _inputDecoration(String label) {
    return InputDecoration(
      labelText: label,
      border: OutlineInputBorder(),
      suffixIcon: label.contains('Search') ? Icon(Icons.search) : null,
      labelStyle: GoogleFonts.lato(), // Custom font
      fillColor: Colors.white,
      filled: true,
    );
  }

  // Method to show dialog for setting calorie goal
  void _showCalorieGoalDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Set Calorie Goal'),
          content: TextField(
            controller: calorieGoalController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: "Enter your calorie goal"),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: Text('Set Goal'),
              onPressed: () {
                setState(() {
                  calorieGoal = int.tryParse(calorieGoalController.text) ?? 2000;
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
