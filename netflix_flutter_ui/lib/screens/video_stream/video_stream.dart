import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoStreamItem extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool looping;
  VideoStreamItem({this.videoPlayerController, this.looping});
  @override
  _VideoStreamItemState createState() => _VideoStreamItemState();
}

class _VideoStreamItemState extends State<VideoStreamItem> {
  ChewieController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      aspectRatio: 16 / 9,
      autoInitialize: true,
      looping: widget.looping,
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(
              color: Colors.lightBlueAccent,
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget.videoPlayerController.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Chewie(
        controller: _controller,
      ),
    );
  }
}

//
class VideoStreamScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
      ),
      body: ListView(
        children: [
          VideoStreamItem(
            looping: true,
            videoPlayerController: VideoPlayerController.network(
              'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
            ),
          )
        ],
      ),
    );
  }
}
