import '../Views/YoutubeView.dart';

class VideoRepository {
  static final List<VideoInfo> _videoInfos = [
    VideoInfo(
        topic: 'Back and Biceps',
        videoName: 'Preacher Curls',
        videoUrl: 'https://www.youtube.com/watch?v=fIWP-FRFNU0&ab_channel=KAGED'),
    VideoInfo(
        topic: 'Back and Biceps',
        videoName: 'Dumbbell Curls',
        videoUrl: 'https://www.youtube.com/watch?v=ykJmrZ5v0Oo&ab_channel=Howcast'),
    VideoInfo(
        topic: 'Back and Biceps',
        videoName: 'Lat Pulldowns',
        videoUrl: 'https://www.youtube.com/watch?v=SALxEARiMkw&ab_channel=ATHLEAN-X%E2%84%A2'),
    VideoInfo(
        topic: 'Back and Biceps',
        videoName: 'Seated Row',
        videoUrl: 'https://www.youtube.com/watch?v=GZbfZ033f74&ab_channel=ScottHermanFitness'),
    VideoInfo(
        topic: 'Back and Biceps',
        videoName: 'Barbell Row',
        videoUrl: 'https://www.youtube.com/watch?v=FWJR5Ve8bnQ&ab_channel=MaxEuceda'),
    VideoInfo(
        topic: 'Back and Biceps',
        videoName: 'Single Arm Pulldown',
        videoUrl: 'https://www.youtube.com/watch?v=0BT533ueEdI&ab_channel=ChrisandEricMartinez'),
    VideoInfo(
        topic: 'Back and Biceps',
        videoName: 'Facepulls',
        videoUrl: 'https://www.youtube.com/watch?v=V8dZ3pyiCBo&ab_channel=KAGED'),
    VideoInfo(
        topic: 'Chest, Shoulders, and Triceps',
        videoName: 'Dumbbell Skull Crusher',
        videoUrl: 'https://www.youtube.com/watch?v=ir5PsbniVSc&ab_channel=ScottHermanFitness'),
    VideoInfo(
        topic: 'Chest, Shoulders, and Triceps',
        videoName: 'Dumbbell Bench',
        videoUrl: 'https://www.youtube.com/watch?v=VmB1G1K7v94&ab_channel=ScottHermanFitness'),
    VideoInfo(
        topic: 'Chest, Shoulders, and Triceps',
        videoName: 'Barbell Bench',
        videoUrl: 'https://www.youtube.com/watch?v=rT7DgCr-3pg&ab_channel=ScottHermanFitness'),
    VideoInfo(
        topic: 'Chest, Shoulders, and Triceps',
        videoName: 'Incline Dumbbell Bench',
        videoUrl: 'https://www.youtube.com/watch?v=8iPEnn-ltC8&ab_channel=ScottHermanFitness'),
    VideoInfo(
        topic: 'Chest, Shoulders, and Triceps',
        videoName: 'Millitary Press',
        videoUrl: 'https://www.youtube.com/watch?v=2yjwXTZQDDI&ab_channel=ScottHermanFitness'),
    VideoInfo(
        topic: 'Chest, Shoulders, and Triceps',
        videoName: 'Dumbbell Chest Flys',
        videoUrl: 'https://www.youtube.com/watch?v=eozdVDA78K0&ab_channel=ScottHermanFitness'),
    VideoInfo(
        topic: 'Legs',
        videoName: 'Barbell Squats',
        videoUrl: 'https://www.youtube.com/watch?v=1oed-UmAxFs&ab_channel=ScottHermanFitness'),
    VideoInfo(
        topic: 'Legs',
        videoName: 'Leg Extensions',
        videoUrl: 'https://www.youtube.com/watch?v=ljO4jkwv8wQ&ab_channel=JeffNippard'),
    VideoInfo(
        topic: 'Legs',
        videoName: 'Barbell RDL',
        videoUrl: 'https://www.youtube.com/watch?v=mZxxJEncsyw&ab_channel=TheProactiveAthlete'),
    VideoInfo(
        topic: 'Legs',
        videoName: 'Calf Raises',
        videoUrl: 'https://www.youtube.com/watch?v=wxwY7GXxL4k&ab_channel=Bodybuilding.com'),
    VideoInfo(
        topic: 'Core',
        videoName: 'Ab Workout',
        videoUrl: 'https://www.youtube.com/watch?v=h4N_fKnAWL8&ab_channel=OliverSjostrom'),
  ];

  static List<VideoInfo> get videoInfos => _videoInfos;

  static void addVideo(VideoInfo videoInfo) {
    _videoInfos.add(videoInfo);
  }

  static void removeVideo(VideoInfo videoInfo) {
    _videoInfos.remove(videoInfo);
  }

  static void updateVideo(int index, VideoInfo videoInfo) {
    if (index >= 0 && index < _videoInfos.length) {
      _videoInfos[index] = videoInfo;
    }
  }
}
