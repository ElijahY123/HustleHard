import 'package:firstapp/Views/MainPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:firstapp/Model/model.dart';

class FitnessController extends StatefulWidget {

  @override
  State<FitnessController> createState() => _FitnessControllerState();

  void updatePage(newIndex) {
    SelectedPage().updateSelectedIndex(newIndex);
  }

  getCurrentPage(){
    return SelectedPage().getSelectedIndex();
  }
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
}

