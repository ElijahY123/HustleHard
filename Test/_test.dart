import 'package:firstapp/Model/model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  test('testing the test tester',() {
    int i;
    i = 5;
    expect(i, 5);
  });
 group("Testing WorkoutModel", () {
    var model = WorkoutModel();

    test("testing if setTime() add 1 seconds to the time when called", () {
      model.setTime();
      expect(model.digitSeconds, "1");
    });
  });
}