import 'package:flutter/material.dart';

class MuscleGroupsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Choose Body Part',
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget> [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => UpperBodyPage()));
                },
              label: const Text("Upper Body"),
              icon: ImageIcon(
                AssetImage("images/BenchPressIcon.png"),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LowerBodyPage()));
              },
              label: const Text("Lower Body"),
              icon: ImageIcon(
                AssetImage("images/SquatIcon.png"),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UpperBodyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Arm Exercises',
          textAlign: TextAlign.center,
        ),
      ),
      body: Scrollbar(
        controller: ScrollController(),
        thickness: 10,
        child: ListView(
          children: [
            Text(
              '1. Pullups',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Image(
              image: AssetImage("images/Pullups.jpg"),
              height: 300,
              width: 300,
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '2. BenchPress',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Image(
              image: AssetImage("images/BenchPress.jpg"),
              height: 200,
              width: 100,
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '3. Bicep Curl',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Image(
              image: AssetImage("images/BicepCurl.jpg"),
              height: 200,
              width: 100,
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '4. ScareCrow Extensions',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '5. SpeedBag',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '6. Cross Over Extensions',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '7. Hammer Curls',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '8. Overhead Triceps Extension',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '9. Side Curls',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '10. Around The Worlds',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '11. Seated Curls',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '12. Upright Row',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '13. Push Ups',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Padding(padding: EdgeInsets.all(50),),
          ],
        ),
      ),
    );
  }
}

class LowerBodyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Leg Exercises',
          textAlign: TextAlign.center,
        ),
      ),
      body: Scrollbar(
        controller: ScrollController(),
        thickness: 10,
        child: ListView(
          children: [
            Text(
              '1. Squats',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Image(
              image: AssetImage("images/Squats.jpg"),
              height: 300,
              width: 300,
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '2. Lunges',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Image(
              image: AssetImage("images/Lunges.jpg"),
              height: 200,
              width: 100,
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '3. Deadlift',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Image(
              image: AssetImage("images/Deadlift.jpg"),
              height: 200,
              width: 100,
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '4. Lateral Lunge',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '5. Leg Press',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '6. Knee Highs',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '7. Single Leg Dead lift',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '8. Split Squat',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '9. Skater Squat',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '10. Tuck Jump',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '11. Reverse Lunge',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '12. Abductor leg Raises',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '13. Hamstring Curls',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '14. Romanian Dead Lifts',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '15. Leg Extensions',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '16. Steps',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Padding(padding: EdgeInsets.all(50),),
            Text(
              '17. Squat Jumps',
              style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
            ),
            Padding(padding: EdgeInsets.all(50),),
          ],
        ),
      ),
    );
  }
}