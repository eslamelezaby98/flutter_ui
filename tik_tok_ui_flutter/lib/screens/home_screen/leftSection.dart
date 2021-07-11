import 'package:flutter/material.dart';
import 'package:tik_tok_ui_flutter/theme/colors.dart';

class LeftSection extends StatelessWidget {
  final String? name;
  final String? caption;
  final String? songName;
  const LeftSection({
    required this.size,
    this.name,
    this.caption,
    this.songName,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.8,
      height: size.height,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            name!,
            style: TextStyle(
                color: white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            caption!,
            style: TextStyle(color: white),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.music_note,
                color: white,
                size: 15,
              ),
              Flexible(
                child: Text(
                  songName!,
                  style: TextStyle(color: white, height: 1.5),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}