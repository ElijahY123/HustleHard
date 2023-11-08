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
  int totalCalories = 0;

  void addCalories(int amount) {
    totalCalories += amount;
  }
}


