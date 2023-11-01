import 'package:flutter/material.dart';
import 'CalorieCounter.dart';
import 'Schedule.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = MainPage();
        break;
      case 1:
        page = PlaceHolderPage();
        break;
      case 2:
        page = CalorieCounter();
        break;
      case 3:
        page = Schedule();
        break;
      default:
        throw UnimplementedError('No page for $selectedIndex');
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
                      icon: Icon(Icons.hourglass_empty),
                      label: Text('Placeholder page'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.fastfood),
                      label: Text('Calorie Counter'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.schedule),
                      label: Text('Schedule'),
                    )
                  ],
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (value) {
                    setState(() {
                      selectedIndex = value;
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

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Workout Application Framework Main Page', textAlign: TextAlign.center),
    );
  }
}

class PlaceHolderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Placeholder second page', textAlign: TextAlign.center),
    );
  }
}
