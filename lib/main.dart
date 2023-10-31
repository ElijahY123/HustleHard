import 'dart:core';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child:MaterialApp(
        title: 'Fitness App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier{

  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
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
      default:
        throw UnimplementedError('No page for $selectedIndex');
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Row(
            children: [
              SafeArea (
                child: NavigationRail(
                  extended: constraints.maxWidth >= 600,
                  destinations: [
                    NavigationRailDestination(
                        icon: Icon(Icons.home),
                        label: Text('Home Page')
                    ),
                    NavigationRailDestination(
                        icon: Icon(Icons.hourglass_empty),
                        label: Text('placeholder page'),
                    ),
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

class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Center(
     child: Text('Workout Application FrameWork Main Page', textAlign: TextAlign.center),
   );
  }
}

class PlaceHolderPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Placeholder second page', textAlign: TextAlign.center),
    );
  }
}