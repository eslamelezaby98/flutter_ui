import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/create_post_screen/create_post_screen.dart';
import 'package:instagram_ui/screens/home_screen/home_screen.dart';
import 'package:instagram_ui/screens/notification_screen/notification_screen.dart';
import 'package:instagram_ui/screens/profile_screen/profile_screen.dart';
import 'package:instagram_ui/screens/serach_screen/sreach_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //AppBar
    final _myAppBar = AppBar(
      backgroundColor: Color(0xfff8faf8),
      centerTitle: true,
      elevation: 1.0,
      leading: Icon(Icons.camera_alt),
      title: SizedBox(
        height: 35.0,
        child: Image.asset('assets/images/insta_logo.png'),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: Icon(Icons.send),
        )
      ],
    );

    // screens
    List<Widget> _screens = [
      HomeScreen(),
      SearchScreen(),
      CreatePostScreen(),
      NotificationsScreen(),
      ProfileScreen(),
    ];

    // myTab
    List<Tab> _myTab = [
      Tab(
        icon: Icon(Icons.home)
      ),
      Tab(
        icon: Icon(Icons.search)
      ),
      Tab(
        icon: Icon(Icons.add)
      ),
      Tab(
        icon: Icon(Icons.favorite)
      ),
      Tab(
        icon: Icon(Icons.perm_identity)
      ),
    ];
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        appBar: _myAppBar,
        body: TabBarView(
          children: _screens,
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          height: 50,
          alignment: Alignment.center,
          child: TabBar(
            tabs: _myTab,
            unselectedLabelColor: Colors.black,
            labelColor: Colors.blue,
            indicatorColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
