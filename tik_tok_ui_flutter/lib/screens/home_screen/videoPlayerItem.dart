import 'package:flutter/material.dart';
import 'package:tik_tok_ui_flutter/screens/home_screen/leftSection.dart';
import 'package:tik_tok_ui_flutter/screens/home_screen/local_widgets/header_home_screen.dart';
import 'package:tik_tok_ui_flutter/screens/home_screen/rightSection.dart';
import 'package:tik_tok_ui_flutter/theme/colors.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerItem extends StatefulWidget {
  final String videoUrl;
  final String? name;
  final String? caption;
  final String? songName;
  final String? profileImg;
  final String? likes;
  final String? comments;
  final String? shares;
  final String? albumImg;

  const VideoPlayerItem(
      {required this.size,
      required this.videoUrl,
      this.name,
      this.caption,
      this.songName,
      this.profileImg,
      this.likes,
      this.comments,
      this.shares,
      this.albumImg});

  final Size size;
  @override
  _VideoPlayerItemState createState() => _VideoPlayerItemState();
}

class _VideoPlayerItemState extends State<VideoPlayerItem> {
  late VideoPlayerController _videoPlayerController;
  bool isShowPlaying = false;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset(widget.videoUrl)
      ..initialize().then((value) {
        _videoPlayerController.play();
        setState(() {
          isShowPlaying = false;
        });
      });
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
  }

  isplay() {
    return _videoPlayerController.value.isPlaying && !isShowPlaying
        ? Container()
        : Icon(
            Icons.playlist_play,
            size: 80,
            color: white.withOpacity(0.5),
          );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _videoPlayerController.value.isPlaying
              ? _videoPlayerController.pause()
              : _videoPlayerController.play();
        });
      },
      child: RotatedBox(
        quarterTurns: -1,
        child: Container(
          height: widget.size.height,
          width: widget.size.width,
          child: Stack(
            children: [
              Container(
                height: widget.size.height,
                width: widget.size.width,
                decoration: BoxDecoration(color: black),
                child: Stack(
                  children: [
                    VideoPlayer(_videoPlayerController),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(),
                        child: isplay(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: widget.size.height,
                width: widget.size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20, bottom: 10),
                  child: SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HeaderHomeScreen(),
                        Expanded(
                          child: Row(
                            children: [
                              LeftSection(
                                size: widget.size,
                                name: "${widget.name}",
                                caption: "${widget.caption}",
                                songName: "${widget.songName}",
                              ),
                              RightSection(
                                size: widget.size,
                                likes: "${widget.likes}",
                                comments: "${widget.comments}",
                                albumImg: "${widget.albumImg}",
                                profileImg: "${widget.profileImg}",
                                shares: "${widget.shares}",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
