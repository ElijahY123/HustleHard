import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MuscleGroupsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Select An Exercise',
          style: GoogleFonts.sedgwickAve(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.lightBlueAccent[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => UpperBodyPage()));
              },
              label: Text(
                'Arm Exercises',
                style: GoogleFonts.sedgwickAve(
                  textStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              icon: ImageIcon(
                AssetImage("assets/images/BenchPressIcon.png"),
                color: Colors.black,
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
                elevation: 20,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LowerBodyPage()));
              },
              label: Text(
                'Leg Exercises',
                style: GoogleFonts.sedgwickAve(
                  textStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              icon: ImageIcon(
                AssetImage("assets/images/SquatIcon.png"),
                color: Colors.black,
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
                elevation: 20,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CoreBodyPage()));
              },
              label: Text(
                'Core Exercises',
                style: GoogleFonts.sedgwickAve(
                  textStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              icon: ImageIcon(
                AssetImage("assets/images/SitUpIcon.png"),
                color: Colors.black,
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
                elevation: 20,
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
        centerTitle: true,
        title: Text(
          'Arm Exercises',
          style: GoogleFonts.sedgwickAve(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.lightBlueAccent[100],
      body: Scrollbar(
        controller: ScrollController(),
        thickness: 10,
        child: Container(
          child: ListView(
            children: [
              Text(
                '1. Pullups',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                height: 400,
                width: 400,
                image: AssetImage("assets/images/Pullups.jpg"),
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text(
                          "Pull-ups work out multiple muscle groups at once, including your biceps, triceps, forearms, wrists, grip strength, lats, shoulders, and core."),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '2. BenchPress',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
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
                      content: const Text(
                          "Bench pressing is a compound exercise that works your chest and shoulders, as well as the triceps. It's considered one of the best exercises for building muscle and increasing strength, making it an important part of most workouts."),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '3. Bicep Curl',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
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
                      content: const Text(
                          "Bicep curls work the biceps muscles at the front of the upper arm and the brachialis and brachioradialis muscles in the lower arm."),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '4. ScareCrow Extensions',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                image: AssetImage("assets/images/ScarecrowExtensions.jpg"),
                height: 300,
                width: 300,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Add Info"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '5. SpeedBag',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                image: AssetImage("assets/images/Speedbag.jpg"),
                height: 200,
                width: 200,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Add Info"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '6. Cross Over Extensions',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                image: AssetImage("assets/images/CrossoverExtensions.jpg"),
                height: 200,
                width: 200,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Add Info"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '7. Hammer Curls',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                image: AssetImage("assets/images/HammerCurls.jpg"),
                height: 200,
                width: 200,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Add Info"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '8. Overhead Triceps Extension',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                image: AssetImage("assets/images/OverheadTricepsExtension.jpg"),
                height: 200,
                width: 200,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Add Info"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '9. Side Curls',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                image: AssetImage("assets/images/SideCurls.jpg"),
                height: 200,
                width: 200,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Add Info"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '10. Around The Worlds',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                image: AssetImage("assets/images/AroundTheWorlds.jpg"),
                height: 200,
                width: 200,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Add Info"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '11. Seated Curls',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                image: AssetImage("assets/images/SeatedCurls.jpg"),
                height: 200,
                width: 200,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Add Info"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '12. Upright Row',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                image: AssetImage("assets/images/UprightRow.jpg"),
                height: 200,
                width: 200,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Add Info"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '13. Push-ups',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                image: AssetImage("assets/images/Pushups.jpg"),
                height: 200,
                width: 200,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Add Info"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
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
        centerTitle: true,
        title: Text(
          'Leg Exercises',
          style: GoogleFonts.sedgwickAve(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.lightBlueAccent[100],
      body: Scrollbar(
        controller: ScrollController(),
        thickness: 10,
        child: Container(
          child: ListView(
            children: [
              Text(
                '1. Squats',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                image: AssetImage("assets/images/Squats.jpg"),
                height: 300,
                width: 300,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text(
                          "Squats are a compound movement that uses large muscle groups in your legs and core. Helping build core and leg muscle while improving bone health, flexibility, and athletic performance."),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '2. Lunges',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                image: AssetImage("assets/images/Lunges.jpg"),
                height: 300,
                width: 300,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text(
                          "Lunges can help you build muscle in your lower body, core, and glutes."),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '3. Deadlifts',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
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
                      content: const Text(
                          "Deadlifts can help you build strength in your glutes, quads, abs, and core. They can also improve hip stability and mobility."),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '4. Lateral Lunge',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                image: AssetImage("assets/images/Lunges.jpg"),
                height: 300,
                width: 300,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Add Info"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '5. Leg Press',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                image: AssetImage("assets/images/Lunges.jpg"),
                height: 300,
                width: 300,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Add Info"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '6. Knee Highs',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                image: AssetImage("assets/images/Lunges.jpg"),
                height: 300,
                width: 300,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Add Info"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '7. Single Leg Dead lift',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                image: AssetImage("assets/images/Lunges.jpg"),
                height: 300,
                width: 300,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Add Info"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '8. Split Squat',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                image: AssetImage("assets/images/Lunges.jpg"),
                height: 300,
                width: 300,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Add Info"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '9. Skater Squat',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                image: AssetImage("assets/images/Lunges.jpg"),
                height: 300,
                width: 300,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Add Info"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '10. Tuck Jump',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                image: AssetImage("assets/images/Lunges.jpg"),
                height: 300,
                width: 300,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Add Info"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '11. Reverse Lunge',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                image: AssetImage("assets/images/Lunges.jpg"),
                height: 300,
                width: 300,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Add Info"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '12. Abductor Leg Raises',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                image: AssetImage("assets/images/Lunges.jpg"),
                height: 300,
                width: 300,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Add Info"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '13. Hamstring Curls',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                image: AssetImage("assets/images/Lunges.jpg"),
                height: 300,
                width: 300,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Add Info"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '14. Romanian Deadlifts',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                image: AssetImage("assets/images/Lunges.jpg"),
                height: 300,
                width: 300,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Add Info"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '15. Leg Extensions',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                image: AssetImage("assets/images/Lunges.jpg"),
                height: 300,
                width: 300,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Add Info"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '16. Steps',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                image: AssetImage("assets/images/Lunges.jpg"),
                height: 300,
                width: 300,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Add Info"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Text(
                '17. Squat Jumps',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image(
                image: AssetImage("assets/images/Lunges.jpg"),
                height: 300,
                width: 300,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("More Info"),
                      content: const Text("Add Info"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'View More',
                  style: GoogleFonts.loveYaLikeASister(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
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

class CoreBodyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Core Exercises',
          style: GoogleFonts.sedgwickAve(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.lightBlueAccent[100],
      body: Scrollbar(
        controller: ScrollController(),
        thickness: 10,
        child: ListView(
          children: [
            Text(
              '1. Cross Chops',
              style: GoogleFonts.loveYaLikeASister(
                textStyle: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Image(
              image: AssetImage("assets/images/Lunges.jpg"),
              height: 300,
              width: 300,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("More Info"),
                    content: const Text("Add Info"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("OK"),
                      ),
                    ],
                  ),
                );
              },
              child: Text(
                'View More',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50),
            ),
            Text(
              '2. High Knees',
              style: GoogleFonts.loveYaLikeASister(
                textStyle: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Image(
              image: AssetImage("assets/images/Lunges.jpg"),
              height: 300,
              width: 300,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("More Info"),
                    content: const Text("Add Info"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("OK"),
                      ),
                    ],
                  ),
                );
              },
              child: Text(
                'View More',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50),
            ),
            Text(
              '3. Twist Jacks',
              style: GoogleFonts.loveYaLikeASister(
                textStyle: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Image(
              image: AssetImage("assets/images/Lunges.jpg"),
              height: 300,
              width: 300,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("More Info"),
                    content: const Text("Add Info"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("OK"),
                      ),
                    ],
                  ),
                );
              },
              child: Text(
                'View More',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50),
            ),
            Text(
              '4. Side Bridges',
              style: GoogleFonts.loveYaLikeASister(
                textStyle: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Image(
              image: AssetImage("assets/images/Lunges.jpg"),
              height: 300,
              width: 300,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("More Info"),
                    content: const Text("Add Info"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("OK"),
                      ),
                    ],
                  ),
                );
              },
              child: Text(
                'View More',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50),
            ),
            Text(
              '5. Raised Leg Hold',
              style: GoogleFonts.loveYaLikeASister(
                textStyle: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Image(
              image: AssetImage("assets/images/Lunges.jpg"),
              height: 300,
              width: 300,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("More Info"),
                    content: const Text("Add Info"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("OK"),
                      ),
                    ],
                  ),
                );
              },
              child: Text(
                'View More',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50),
            ),
            Text(
              '6. Plank Arm Raises',
              style: GoogleFonts.loveYaLikeASister(
                textStyle: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Image(
              image: AssetImage("assets/images/Lunges.jpg"),
              height: 300,
              width: 300,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("More Info"),
                    content: const Text("Add Info"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("OK"),
                      ),
                    ],
                  ),
                );
              },
              child: Text(
                'View More',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50),
            ),
            Text(
              '7. Push up Into Lunges',
              style: GoogleFonts.loveYaLikeASister(
                textStyle: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Image(
              image: AssetImage("assets/images/Lunges.jpg"),
              height: 300,
              width: 300,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("More Info"),
                    content: const Text("Add Info"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("OK"),
                      ),
                    ],
                  ),
                );
              },
              child: Text(
                'View More',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50),
            ),
            Text(
              '8. Knee to Elbows',
              style: GoogleFonts.loveYaLikeASister(
                textStyle: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Image(
              image: AssetImage("assets/images/Lunges.jpg"),
              height: 300,
              width: 300,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("More Info"),
                    content: const Text("Add Info"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("OK"),
                      ),
                    ],
                  ),
                );
              },
              child: Text(
                'View More',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50),
            ),
            Text(
              '9. Side to Side Chops',
              style: GoogleFonts.loveYaLikeASister(
                textStyle: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Image(
              image: AssetImage("assets/images/Lunges.jpg"),
              height: 300,
              width: 300,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("More Info"),
                    content: const Text("Add Info"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("OK"),
                      ),
                    ],
                  ),
                );
              },
              child: Text(
                'View More',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50),
            ),
            Text(
              '10. Side Leg Raises',
              style: GoogleFonts.loveYaLikeASister(
                textStyle: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Image(
              image: AssetImage("assets/images/Lunges.jpg"),
              height: 300,
              width: 300,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("More Info"),
                    content: const Text("Add Info"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("OK"),
                      ),
                    ],
                  ),
                );
              },
              child: Text(
                'View More',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50),
            ),
            Text(
              '11. Crunch Kicks',
              style: GoogleFonts.loveYaLikeASister(
                textStyle: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Image(
              image: AssetImage("assets/images/Lunges.jpg"),
              height: 300,
              width: 300,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("More Info"),
                    content: const Text("Add Info"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("OK"),
                      ),
                    ],
                  ),
                );
              },
              child: Text(
                'View More',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50),
            ),
            Text(
              '12. Raised Leg Circles',
              style: GoogleFonts.loveYaLikeASister(
                textStyle: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Image(
              image: AssetImage("assets/images/Lunges.jpg"),
              height: 300,
              width: 300,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("More Info"),
                    content: const Text("Add Info"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("OK"),
                      ),
                    ],
                  ),
                );
              },
              child: Text(
                'View More',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50),
            ),
            Text(
              '13. Scissors',
              style: GoogleFonts.loveYaLikeASister(
                textStyle: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Image(
              image: AssetImage("assets/images/Lunges.jpg"),
              height: 300,
              width: 300,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("More Info"),
                    content: const Text("Add Info"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("OK"),
                      ),
                    ],
                  ),
                );
              },
              child: Text(
                'View More',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50),
            ),
            Text(
              '14. 20 Count Hold',
              style: GoogleFonts.loveYaLikeASister(
                textStyle: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Image(
              image: AssetImage("assets/images/Lunges.jpg"),
              height: 300,
              width: 300,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("More Info"),
                    content: const Text("Add Info"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("OK"),
                      ),
                    ],
                  ),
                );
              },
              child: Text(
                'View More',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50),
            ),
            Text(
              '15. Side Elbow Plank',
              style: GoogleFonts.loveYaLikeASister(
                textStyle: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Image(
              image: AssetImage("assets/images/Lunges.jpg"),
              height: 300,
              width: 300,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("More Info"),
                    content: const Text("Add Info"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("OK"),
                      ),
                    ],
                  ),
                );
              },
              child: Text(
                'View More',
                style: GoogleFonts.loveYaLikeASister(
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
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
