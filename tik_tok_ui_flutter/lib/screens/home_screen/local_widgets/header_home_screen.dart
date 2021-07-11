import 'package:flutter/material.dart';
import 'package:tik_tok_ui_flutter/theme/colors.dart';

class HeaderHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Following',
          style: TextStyle(
            color: white.withOpacity(0.7),
            fontSize: 16,
          ),
        ),
        SizedBox(width: 10),
        Text(
          '|',
          style:  TextStyle(
            color: white.withOpacity(0.3),
            fontSize: 17,
          ),
        ),
        SizedBox(width: 10),
        Text(
          'For You',
          style:  TextStyle(
            color: white.withOpacity(0.3),
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
