import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/home_screen/insta_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(child: InstaList()),
      ],
    );
  }
}
