import 'package:firstapp/Controller/controller.dart';
import 'package:firstapp/Main/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.hasError) { print("Couldn't Connect"); }
          if (snapshot.connectionState == ConnectionState.done) {
            return MaterialApp(
              title: 'Fitness App',
              theme: ThemeData(
                useMaterial3: true,
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
              ),
              home: FitnessController(),
            );
          }
          Widget loading= MaterialApp();
          return loading;
        }
    );


  }
}