import 'package:cached_network_image/cached_network_image.dart';
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

  final List<String> _titles = [
    'Chat',
    'Story',
    'Call',
    'Setting',
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
          customButton(Icons.camera_alt_outlined, () {}),
          //Search
          customButton(Icons.search_rounded, () {}),
          //More
          customButton(Icons.more_vert, () {}),
        ],
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(
                'https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100_960_720.jpg',
              ),
            ),
            SizedBox(width: 10),
            Text(
              _titles.elementAt(currentIndex),
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItems,
        backgroundColor: kPrimaryColor,
        currentIndex: currentIndex,
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black45,
        onTap: onTap,
      ),
      body: _screens.elementAt(currentIndex),
    );
  }

  IconButton customButton(IconData icon, Function onPress) {
    return IconButton(
      onPressed: onPress(),
      icon: Icon(
        icon,
        color: kPrimaryColor,
      ),
    );
  }
}
