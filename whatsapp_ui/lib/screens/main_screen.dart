import 'package:flutter/material.dart';
import 'package:whatsapp_ui/constants/consttants.dart';
import 'package:whatsapp_ui/screens/chat_screen/chat_screen.dart';
import 'package:whatsapp_ui/screens/call_screen/call_screen.dart';
import 'package:whatsapp_ui/screens/story_screen/story_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.chat_bubble_outline),
      label: 'CHAT',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.circle),
      label: 'STORY',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.call),
      label: 'CALL',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'Settings',
    ),
  ];

  final List _screens = [
    ChatScreen(),
    StoryScreen(),
    CallScreen(),
    Text(
      'Index 4: Settings',
    ),
  ];

  int currentIndex = 0;

  void onTap(int newIndex) {
    setState(() {
      currentIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          //Camera
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
              color: kPrimaryColor,
            ),
          ),
          //Search
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_sharp,
              color: kPrimaryColor,
            ),
          ),
          //More
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_outlined,
              color: kPrimaryColor,
            ),
          ),
        ],
        title: Text(
          'ChatApp',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItems,
        backgroundColor: kPrimaryColor,
        currentIndex: currentIndex,
        elevation: 0.0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black45,
        onTap: onTap,
      ),
      body: _screens.elementAt(currentIndex),
    );
  }
}
