import 'package:flutter/material.dart';
import 'package:tik_tok_ui_flutter/theme/colors.dart';

getProfile(image) {
  return Container(
    width: 50,
    height: 50,
    child: Stack(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: white),
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                image,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 3,
          left: 18,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: primary,
            ),
            child: Center(
              child: Icon(
                Icons.add,
                color: white,
                size: 15,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
