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
              label: const Text("Arm Exercises"),
              icon: ImageIcon(
                AssetImage("assets/images/BenchPressIcon.png"),
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
              label: const Text("Leg Exercises"),
              icon: ImageIcon(
                AssetImage("assets/images/SquatIcon.png"),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CoreBodyPage()));
              },
              label: const Text("Core Exercises"),
              icon: ImageIcon(
                AssetImage("assets/images/SitUpIcon.png"),
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
        child: Container(
          child: ListView(
            children: [
              Text(
                '1. Pullups',
              ),
              Image(
                height: 200,
                width: 200,
                image: AssetImage("assets/images/Pullups.jpg"),
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Pull-ups work out multiple muscle groups at once, including your biceps, triceps, forearms, wrists, grip strength, lats, shoulders, and core."),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text('View More'),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '2. BenchPress',
              ),
              Image(
                image: AssetImage("assets/images/BenchPress.jpg"),
                height: 200,
                width: 200,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Bench pressing is a compound exercise that works your chest and shoulders, as well as the triceps. It's considered one of the best exercises for building muscle and increasing strength, making it an important part of most workouts."),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text('View More'),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '3. Bicep Curl',
              ),
              Image(
                image: AssetImage("assets/images/BicepCurl.jpg"),
                height: 200,
                width: 200,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Bicep curls work the biceps muscles at the front of the upper arm and the brachialis and brachioradialis muscles in the lower arm."),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text('View More'),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
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
        child: Container(
          child: ListView(
            children: [
              Text(
                '1. Squats',
              ),
              Image(
                image: AssetImage("images/Squats.jpg"),
                height: 200,
                width: 200,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Squats are a compound movement that uses large muscle groups in your legs and core. Helping build core and leg muscle while improving bone health, flexibility, and athletic performance."),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text('View More'),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '2. Lunges',
              ),
              Image(
                image: AssetImage("assets/images/Lunges.jpg"),
                height: 200,
                width: 200,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Lunges can help you build muscle in your lower body, core, and glutes."),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text('View More'),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '3. Deadlift',
              ),
              Image(
                image: AssetImage('assets/images/Deadlift.jpg'),
                height: 200,
                width: 200,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Deadlifts can help you build strength in your glutes, quads, abs, and core. They can also improve hip stability and mobility."),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text('View More'),
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
      ),
    );
  }
}

class CoreBodyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Core Exercises',
            textAlign: TextAlign.center,
          ),
        ),
        body: Scrollbar(
            controller: ScrollController(),
            thickness: 10,
            child: ListView(
                children: [
                  Text(
                    '1. Cross Chops',
                    style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
                  ),
                  Padding(padding: EdgeInsets.all(50),),
                  Text(
                    '2. High Knees',
                    style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
                  ),
                  Padding(padding: EdgeInsets.all(50),),
                  Text(
                    '3. Twist Jacks',
                    style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
                  ),
                  Padding(padding: EdgeInsets.all(50),),
                  Text(
                    '4. Side Bridges',
                    style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
                  ),
                  Padding(padding: EdgeInsets.all(50),),
                  Text(
                    '5. Raised Leg Hold',
                    style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
                  ),
                  Padding(padding: EdgeInsets.all(50),),
                  Text(
                    '6. Plank Arm Raises',
                    style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
                  ),
                  Padding(padding: EdgeInsets.all(50),),
                  Text(
                    '7. Push Up Into Lunges',
                    style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
                  ),
                  Padding(padding: EdgeInsets.all(50),),
                  Text(
                    '8. Knee to Elbows',
                    style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
                  ),
                  Padding(padding: EdgeInsets.all(50),),
                  Text(
                    '9. Side to Side Chops',
                    style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
                  ),
                  Padding(padding: EdgeInsets.all(50),),
                  Text(
                    '10. Side Leg Raises',
                    style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
                  ),
                  Padding(padding: EdgeInsets.all(50),),
                  Text(
                    '11. Crunch Kicks',
                    style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
                  ),
                  Padding(padding: EdgeInsets.all(50),),
                  Text(
                    '12. Raised Leg Circles',
                    style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
                  ),
                  Padding(padding: EdgeInsets.all(50),),
                  Text(
                    '13. Scissors',
                    style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
                  ),
                  Padding(padding: EdgeInsets.all(50),),
                  Text(
                    '14. 20 Count Hold',
                    style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
                  ),
                  Padding(padding: EdgeInsets.all(50),),
                  Text(
                    '15. Side Elbow Plank',
                    style: TextStyle(fontSize: 32, color: Colors.cyanAccent),
                  ),
                  Padding(padding: EdgeInsets.all(50),),
                ],
            ),
        ),
    );
  }
}
