import 'package:flutter/material.dart';

class WorkoutView extends StatelessWidget {
  final Function() getTime;
  final Function() getLaps;
  final Function() stopStopwatch;
  final Function() resetStopwatch;
  final Function() startStopwatch;
  final Function() getDistanceRan;
  final Function() addLaps;
  final Function() isTimerStarted;
  final Function() getIsWorkoutStarted;
  final Function() setTime;


  WorkoutView({
    required this.getTime,
    required this.getLaps,
    required this.stopStopwatch,
    required this.resetStopwatch,
    required this.startStopwatch,
    required this.getDistanceRan,
    required this.addLaps,
    required this.isTimerStarted,
    required this.getIsWorkoutStarted,
    required this.setTime,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF03A9F4),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    "Start Workout",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Center(
                  child: Text(
                    "Miles",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                      getDistanceRan(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 70.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Text(
                    getTime(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 70.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  height: 250.0,
                  decoration: BoxDecoration(
                    color: const Color(0x62FFFFFF),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ListView.builder(
                      itemCount: getLaps().length,
                      itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Lap ${index+1}",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0
                                ),
                              ),
                              Text(
                                "${getLaps()[index]}",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: RawMaterialButton(
                        onPressed: () {
                            (isTimerStarted()) ?
                            startStopwatch() :
                            stopStopwatch();
                        },
                        shape: const StadiumBorder(
                            side: BorderSide(
                                color: Colors.blue)
                        ),
                        child: Text(
                          (isTimerStarted()) ? "Start" : "Pause",
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    IconButton(
                        color: Colors.white,
                        onPressed: () {
                            addLaps();
                        },
                        icon: const Icon(Icons.flag)
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Expanded(
                      child: RawMaterialButton(
                        onPressed: () {
                            resetStopwatch();
                        },
                        fillColor: Colors.blue,
                        shape: const StadiumBorder(),
                        child: const Text(
                          "Reset",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
    );
  }

}