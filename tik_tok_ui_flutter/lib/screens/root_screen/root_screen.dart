import 'package:flutter/material.dart';
import 'package:tik_tok_ui_flutter/screens/home_screen/home_screen.dart';
import 'package:tik_tok_ui_flutter/screens/root_screen/bottom_navigation_bar.dart';
import 'package:tik_tok_ui_flutter/theme/colors.dart';

class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNaviagtionBar(),
      body: getBody(),
    );
  }

  getBody() {
    return IndexedStack(
      index: pageIndex,
      children: [
        HomeScreen(),
        Center(
          child: Text(
            "Discover",
            style: TextStyle(
                color: black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Upload",
            style: TextStyle(
                color: black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "All Activity",
            style: TextStyle(
                color: black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Profile",
            style: TextStyle(
                color: black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
