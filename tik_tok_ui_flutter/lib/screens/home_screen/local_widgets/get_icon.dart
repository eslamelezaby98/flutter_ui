
import 'package:flutter/material.dart';
import 'package:tik_tok_ui_flutter/theme/colors.dart';

getIcon(icon, count, size) {
  return Container(
    child: Column(
      children: [
        Icon(
          icon,
          color: white,
          size: size,
        ),
        SizedBox(height: 5),
        Text(
          count,
          style: TextStyle(
            color: white,
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    ),
  );
}
