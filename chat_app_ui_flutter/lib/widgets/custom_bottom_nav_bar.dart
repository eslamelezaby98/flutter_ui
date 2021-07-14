import 'package:flutter/material.dart';
import 'package:whatsapp_ui/constants/consttants.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 200,
      color: kPrimaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          custom_button(),
          custom_button(),
          custom_button(),
          custom_button(),
        ],
      ),
    );
  }

  IconButton custom_button() {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.chat_bubble_outline,
        color: Colors.white,
        size: 35,
      ),
    );
  }
}
