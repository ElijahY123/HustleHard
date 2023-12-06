import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoInfo {
  final String topic;
  final String videoName;
  final String videoUrl;

  VideoInfo({
    required this.topic,
    required this.videoName,
    required this.videoUrl,
  });
}

class YoutubeView extends StatelessWidget {
  final List<VideoInfo> videoInfos;
  final void Function(List<VideoInfo> videoInfos) onWatchYoutube;

  YoutubeView({
    required this.videoInfos,
    required this.onWatchYoutube,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Video Guides',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        backgroundColor: Colors.red, // Customize the app bar color
      ),
      body: Container(
        color: Colors.black12, // Customize the background color
        child: ListView.builder(
          itemCount: videoInfos.length,
          itemBuilder: (context, index) {
            VideoInfo videoInfo = videoInfos[index];
            return Card(
              elevation: 5, // Add elevation to the card
              margin: EdgeInsets.all(10), // Add margin to the card
              child: ListTile(
                title: Text(
                  '${videoInfo.topic} - ${videoInfo.videoName}',
                  style: TextStyle(
                    color: Colors.black, // Customize text color
                    fontWeight: FontWeight.bold, // Add bold font weight
                    fontSize: 16, // Customize font size
                  ),
                ),
                onTap: () => _playYoutubeVideo(context, videoInfo.videoUrl),
              ),
            );
          },
        ),
      ),
    );
  }

  void _playYoutubeVideo(BuildContext context, String videoUrl) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => YoutubePlayerScreen(videoUrl: videoUrl),
      ),
    );
  }
}


class YoutubePlayerScreen extends StatefulWidget {
  final String videoUrl;

  YoutubePlayerScreen({required this.videoUrl});

  @override
  _YoutubePlayerScreenState createState() => _YoutubePlayerScreenState();
}

class _YoutubePlayerScreenState extends State<YoutubePlayerScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.videoUrl) ?? '',
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );

    // Add listener for fullscreen changes
    _controller.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _controller.value.isFullScreen ? null : AppBar(
        title: Text('Video Player'),
      ),
      body: Center(
        child: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}