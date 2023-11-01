import 'package:firstapp/Views/MainPage.dart';
import 'package:flutter/cupertino.dart';

class FitnessController extends StatefulWidget {

  @override
  State<FitnessController> createState() => _FitnessControllerState();

}

class _FitnessControllerState extends State<FitnessController> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return FitnessView();

  }

  void refresh() {
    setState(() {
    });
  }

}

