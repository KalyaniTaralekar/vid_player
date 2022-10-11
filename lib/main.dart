import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:vid_player/chewie_video_items.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Video Player",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Video Player',
        ),
      ),
      body: ListView(
        children: <Widget>[
          VideoList(
            videoPlayerController:
                VideoPlayerController.asset('vid_player\assets\assets.mp4'),
            looping: true,
          ),
          VideoList(
            videoPlayerController: VideoPlayerController.network('https://www.pexels.com/video/a-rocky-river-in-the-forest-5896379/'),
            looping: false,
          ),
        ],
      ),
    );
  }
}
