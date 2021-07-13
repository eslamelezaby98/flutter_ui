import 'package:flutter/material.dart';
import 'package:whatsapp_ui/constants/consttants.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.only(right: 40, left: 40),
        child: Container(
          height: 50,
          // width:  / 3,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildCustomButton(Icons.chat_bubble_outline, () {},'9'),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.adjust_rounded,
                  color: Colors.white,
                ),
              ),
              buildCustomButton(Icons.call, () {} , '6'),
            ],
          ),
        ),
      ),
    );
  }

  Stack buildCustomButton(IconData icon, Function onPress,String numbers) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPress(),
          icon: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        Positioned(
          right: 0,
          child: CircleAvatar(
            backgroundColor: Colors.green,
            maxRadius: 10,
            child: Text(
              numbers,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
