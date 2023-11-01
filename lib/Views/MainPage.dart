import 'package:flutter/material.dart';
import 'CalorieCounter.dart';

class FitnessView extends StatelessWidget {

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
                  ],
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (value) {
                    selectedIndex = value;
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
