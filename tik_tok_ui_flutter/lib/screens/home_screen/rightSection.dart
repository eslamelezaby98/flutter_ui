import 'package:flutter/material.dart';
import 'package:tik_tok_ui_flutter/constants/tik_tok_icons.dart';
import 'package:tik_tok_ui_flutter/screens/home_screen/local_widgets/get_album.dart';
import 'package:tik_tok_ui_flutter/screens/home_screen/local_widgets/get_icon.dart';
import 'package:tik_tok_ui_flutter/screens/home_screen/local_widgets/get_profile.dart';

class RightSection extends StatelessWidget {
  final String? likes;
  final String? comments;
  final String? shares;
  final String? profileImg;
  final String? albumImg;

  final Size size;

  const RightSection(
      {required this.size,
      this.likes,
      this.comments,
      this.shares,
      this.profileImg,
      this.albumImg});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: size.height,
        child: Column(
          children: [
            Container(
              height: size.height * 0.3,
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                getProfile(profileImg),
                getIcon(TikTokIcons.heart, likes, 35.0),
                getIcon(TikTokIcons.chat_bubble, comments, 35.0),
                getIcon(TikTokIcons.reply, shares, 25.0),
                getAlbum(albumImg),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
