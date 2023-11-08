import "package:flutter/cupertino.dart";

import "Event.dart";

class SelectedPage {

  var selectedIndex = 0;

  void updateSelectedIndex(var newIndex){
    selectedIndex = newIndex;
  }

  getSelectedIndex()  {
    return selectedIndex;
}

}

class FitnessModel {
  // CalorieCounter Page
  int totalCalories = 0;

  void addCalories(int amount) {
    totalCalories += amount;
  }

  // Calendar Page

  DateTime today = DateTime.now();
  DateTime firstDay = DateTime.now().subtract(Duration(days: 365));
  DateTime lastDay = DateTime.now().add(Duration(days: 1826));
  Map<DateTime, List<Event>> events = {};
  TextEditingController eventController = TextEditingController();
  late ValueNotifier<List<Event>> selectedEvents;// = ValueNotifier(getEventsForDay(today!));

  List<Event> getEventsForDay(DateTime day) {
    return events[day] ?? [];
  }



  void onDaySelected(DateTime day, DateTime focusedDay) {
    today = day;
  }
}
