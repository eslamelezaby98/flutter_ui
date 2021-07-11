

import 'package:flutter/material.dart';
import 'package:tik_tok_ui_flutter/theme/colors.dart';

getAlbum(albumImg) {
  return Container(
    width: 50,
    height: 50,
    child: Stack(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: black,
          ),
        ),
        Center(
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(albumImg),
                )),
          ),
        ),
      ],
    ),
  );
}
