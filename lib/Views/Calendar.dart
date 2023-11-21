import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../Model/Event.dart';

class Calendar extends StatelessWidget {
  final DateTime today;
  final DateTime firstDay;
  final DateTime lastDay;
  final Function(DateTime, DateTime) onDaySelected;
  final Map<DateTime, List<Event>> events;
  final TextEditingController eventController;
  final ValueNotifier<List<Event>> selectedEvents;
  final List<Event> Function(DateTime day) getEventsForDay;

  Calendar ({
    required this.today,
    required this.firstDay,
    required this.lastDay,
    required this.onDaySelected,
    required this.events,
    required this.eventController,
    required this.selectedEvents,
    required this.getEventsForDay,
  });

  void rand(DateTime day, DateTime day1) {
    print(selectedEvents.value.toString());
  }

  //DateTime focusedDay = DateTime.now();
  //DateTime firstDay = DateTime.now().subtract(Duration(days: 365));
  //DateTime lastDay = DateTime.now().add(Duration(days: 1826));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    scrollable: true,
                    title: Text("Event Name"),
                    content: Padding(
                      padding:  EdgeInsets.all(8),
                      child: TextField(
                        controller: eventController,
                      )
                    ),
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            events.addAll({
                              today: [Event(eventController.text)]
                            });
                            Navigator.of(context).pop();
                            selectedEvents.value = getEventsForDay(today);
                          },
                          child: Text("Submit")
                      )
                    ],
                  );
                });
          },
          child: Icon(Icons.add)
      ),
      body: Column(
        children: [
          TableCalendar(
            locale: "en_US",
            rowHeight: 50,
            headerStyle: HeaderStyle(formatButtonVisible: false, titleCentered: true),
            availableGestures: AvailableGestures.all,
            selectedDayPredicate: (day) => isSameDay(day, today),
            focusedDay: today,
            firstDay: firstDay,
            lastDay: lastDay,
            onDaySelected: onDaySelected,
            eventLoader: getEventsForDay,
            onDayLongPressed: rand,
          ),
          SizedBox(height: 8.0),
          Expanded(
            child: ValueListenableBuilder<List<Event>>(
              valueListenable: selectedEvents,
              builder: (context, value, _) {
                return ListView.builder(
                  itemCount: value.length,
                  itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      onTap: () => print(""),
                      title: Text('${value[index].title}'),
                    )
                  );
                });
              }
            ),
          )
        ]
      ),
      backgroundColor: Colors.lightGreen[100],
    );
  }
}
