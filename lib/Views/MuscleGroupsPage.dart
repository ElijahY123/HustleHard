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
                      content: const Text("Scarecrow Extensions target the arms in their entirety as well as the shoulders. It is a great workout for focus on all arm muscles and shoulders."),
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
                      content: const Text("SpeedBag targets the arms and also improves cardio. It is also great at improving fist speed if you are doing boxing training."),
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
                      content: const Text("Crossover Extensions target the forearm, biceps, shoulder, and pectoral. It is a great upper body workout for arms or chest."),
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
                      content: const Text("Hammer Curls target the biceps and the forearms. This is a arm workout that focuses mainly on the bicep and forearms."),
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
                      content: const Text("Overhead Triceps Extensions focus on the triceps and the shoulders. The Triceps are the main focus of this workout."),
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
                      content: const Text("Side Curls work on the biceps and the shoulders. It improves on the side body muscles as well."),
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
                      content: const Text("Around the worlds works on the chest and shoulders. It also has an impact on the biceps and forearms. It also improves on your grip strength as well."),
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
                      content: const Text("Seated Curls focuses on the biceps and triceps. The bicep is the main focus of this workout."),
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
                      content: const Text("Upright Row is a focused shoulder workout. The shoulders are the main impact of this workout. It also improves on grip strength."),
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
                      content: const Text("Pushups is a complete upper body workout. The arms, shoulders, chest, and even core are impacted by push-ups. It is this broad coverage of area impact that makes this a great overall body workout."),
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
                      content: const Text("The Lateral Lunge works on multiple lower body muscles, mostly in the legs. It works on areas like quadriceps, glutes, and hamstrings."),
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
                      content: const Text("Leg Press is similar in its targeting of leg areas like the quadriceps, glutes, and hamstring. However it is a more intense workout on these areas than the lateral lunge."),
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
                      content: const Text("The Knee Highs work on your legs primarily your thigh muscles. It is also a duration exercise that builds how long your muscles can be under stress. It also has an impact on core muscles and balance."),
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
                      content: const Text("The Single leg dead lift works on the glutes. It also works on the mobility of your hip and improves stability."),
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
                      content: const Text("Split squats is a targeted version of a squat that focuses mostly on the quads and glutes. So if these areas need improvement this is the exercise. It also improves your ability to target specific muscle areas."),
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
                      content: const Text("Skater Squats like split squat targets specific areas of the legs. This workout focuses on knee stability, glutes, and quads. It also has a slight impact on core and stability."),
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
                      content: const Text("Tuck jumps target the glutes and core. They also improve jumping ability and knee strength."),
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
                      content: const Text("The reverse lunge focus on glutes and hamstrings. It is another version of the standard lunge that puts less stress on joints."),
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
                      content: const Text("Abductor leg raises these target the inner thighs and the adductors in your legs. It also targets muscles in the side of your torso."),
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
                      content: const Text("Hamstring curls improve joint health in the knees and also improve balance and mobility. They also make the leg more stable and reduce the risk of knee injuries."),
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
                      content: const Text("The Romanian deadlift develops the posterior chain muscles, spine, and adductors. A great workout for both legs and core."),
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
                      content: const Text("leg extensions isolate and target the quads and general lower body strength. This workout, unlike other leg workouts, has added weight to it."),
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
                      content: const Text("General steps or step machines are a combination of a leg muscle workout and a cardio workout improving endurance."),
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
                      content: const Text("Squat jumps are a combination of a squat and a tuck jump that improves leg muscles, core muscles, and jumping ability."),
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
                    content: const Text("Cross chops focus on the transverse abdominal and oblique muscles in your core. They also improve back muscles as well."),
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
                    content: const Text("High Knees work both your legs and core it is also great for balance and endurance."),
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
                    content: const Text("The twist jacks work on the obliques and transverse abdominal muscles and help you maintain good posture. It can also improve spine muscles and waistline."),
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
                    content: const Text("Side Bridges are a fantastic multiple region exercise. It works on arms, core, and legs. Improving the muscles in all these regions it also improves balance."),
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
                    content: const Text("The raised leg hold improves the core significantly focusing on the abs. it also improves on balance."),
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
                    content: const Text("Plank Arm Raises impact the abs and core in general. It also works on muscles in the lower back and shoulders/arms."),
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
                    content: const Text("This is the combination of lunges and push ups. This targets the areas that push ups and lunges target but also targets the core through the transition process."),
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
                    content: const Text("Knee to Elbows targets the core with abs and side muscles. It also improves balance."),
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
                    content: const Text("Side to side chops works the obliques and core. It also works on the lower back and shoulders."),
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
                    content: const Text("Side leg raises work on the muscles in both legs and core. Working on the abs and side muscles. It also works the thigh muscles as well."),
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
                    content: const Text("Crunch kicks work the glutes in the hip and the quads in the thighs. It also works the core in the abs and upper chest. It also improves balance."),
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
                    content: const Text("Raised leg circles work on hardening the abs it also works the front hip flexors and the neck muscles."),
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
                    content: const Text("Scissor kicks work the legs and core. this also works muscles in the back. They also build balance."),
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
                    content: const Text("A 20 count hold is a great abs workout for abs. Building the core muscles and is a great duration exercise."),
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
                    content: const Text("Side elbow plank is a plank just on the side that targets the abs and side muscles."),
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
