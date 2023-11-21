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
        /**
        elevation: 22,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
            ),
        ),
        backgroundColor: Colors.lightBlueAccent,
            **/
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
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
          'Upper Body Exercises',
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
                image: AssetImage("images/Pullups.jpg"),
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
                image: AssetImage("images/BenchPress.jpg"),
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
                image: AssetImage("images/BicepCurl.jpg"),
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
          'Lower Body Exercises',
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
              image: AssetImage("images/Lunges.jpg"),
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
              image: AssetImage("images/Deadlift.jpg"),
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
            Padding(
              padding: EdgeInsets.all(50),
            ),
          ],
        ),
      ),
    );
  }
}
