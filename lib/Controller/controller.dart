import 'package:firstapp/Views/MainPage.dart';
import 'package:firstapp/Model/model.dart';
import 'package:flutter/material.dart';
import '../Views/CalorieCounter.dart';

class FitnessController extends StatefulWidget {
  @override
  State<FitnessController> createState() => _FitnessControllerState();
}

class _FitnessControllerState extends State<FitnessController> {

  SelectedPage pageSelected = new SelectedPage();

  @override
  Widget build(BuildContext context){

    Widget page;
    switch (pageSelected.getSelectedIndex()) {
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
                      icon: Icon(Icons.hourglass_empty),
                      label: Text('Placeholder page'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.fastfood),
                      label: Text('Calorie Counter'),
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


