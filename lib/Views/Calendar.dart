import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatelessWidget {
  DateTime focusedDay = DateTime.now();
  DateTime firstDay = DateTime.now().subtract(Duration(days: 365));
  DateTime lastDay = DateTime.now().add(Duration(days: 1826));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
      ),
      body: Center(
        child: TableCalendar(
          locale: "en_US",
          rowHeight: 50,
          headerStyle: HeaderStyle(formatButtonVisible: false, titleCentered: true),
          availableGestures: AvailableGestures.all,
          focusedDay: focusedDay,
          firstDay: firstDay,
          lastDay: lastDay,
          //onDaySelected: onDaySelected,
        )
      ),
      backgroundColor: Colors.lightGreen[100],
    );
  }
}
