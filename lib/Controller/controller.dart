import 'package:firstapp/Views/MuscleGroupsPage.dart';
import 'package:flutter/material.dart';
import '../Model/model.dart';
import '../Views/CalorieCounter.dart';
import 'package:firstapp/Views/MainPage.dart';
import 'package:firstapp/Views/Calendar.dart';

class FitnessController extends StatefulWidget {
  @override
  State<FitnessController> createState() => _FitnessControllerState();
}

class _FitnessControllerState extends State<FitnessController> {
  final FitnessModel model = FitnessModel();
  final TextEditingController caloriesInputController = TextEditingController();
  String errorMessage = '';

  // Calorie Page

  void addCalories(int amount) {
    setState(() {
      model.addCalories(amount);
      caloriesInputController.clear();
      errorMessage = '';
    });
  }

  // Calendar Page

  void onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      model.onDaySelected(day, focusedDay);
    });
  }

  SelectedPage pageSelected = SelectedPage();

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (pageSelected.getSelectedIndex()) {
      case 0:
        page = MainPage();
        break;
      case 1:
        page = Calendar(
          today: model.today,
          firstDay: model.firstDay,
          lastDay: model.lastDay,
          onDaySelected: onDaySelected,
          events: model.events,
          eventController: model.eventController,
          selectedEvents: model.selectedEvents,
          getEventsForDay: model.getEventsForDay,
        );
        break;
      case 2:
        page = CalorieCounterView(
          totalCalories: model.totalCalories,
          caloriesInputController: caloriesInputController,
          errorMessage: errorMessage,
          onAddCalories: addCalories,
        );
        break;
      case 3:
        page = MuscleGroupsPage();
        break;
      default:
        throw UnimplementedError('No page for selected page');
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Row(
            children: [
              SafeArea(
                child: NavigationRail(
                  extended: constraints.maxWidth >= 600,
                  destinations: [
                    NavigationRailDestination(
                      icon: Icon(Icons.home),
                      label: Text('Home Page'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.calendar_month),
                      label: Text('Calendar Page'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.fastfood),
                      label: Text('Calorie Counter'),
                    ),
                    NavigationRailDestination(
                        icon: Icon(Icons.run_circle_outlined),
                        label: Text('Workouts'),
                    ),
                  ],
                  selectedIndex: pageSelected.getSelectedIndex(),
                  onDestinationSelected: (value) {
                    setState(() {
                      pageSelected.updateSelectedIndex(value);
                    });
                  },
                ),
              ),
              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: page,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}