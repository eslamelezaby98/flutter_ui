import 'package:daily_exercises_app_ui/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomItem(
            title: 'Today',
            svgPic: 'assets/icons/calendar.svg',
            isActive: false,
          ),
          BottomItem(
            title: 'All Exercises',
            svgPic: 'assets/icons/gym.svg',
            isActive: true,
          ),
          BottomItem(
            title: 'Setting',
            svgPic: 'assets/icons/Settings.svg',
            isActive: false,
          ),
        ],
      ),
    );
  }
}

class BottomItem extends StatelessWidget {
  final Function onTap;
  final String svgPic;
  final bool isActive;
  final String title;

  const BottomItem({this.onTap, this.svgPic, this.isActive, this.title});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            svgPic,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            title,
            style: TextStyle(
              color: isActive ? kActiveIconColor : kTextColor,
            ),
          )
        ],
      ),
    );
  }
}
