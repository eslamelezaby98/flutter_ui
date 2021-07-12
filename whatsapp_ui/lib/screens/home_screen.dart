import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/tabs/chats_tab.dart';
import 'package:whatsapp_ui/screens/tabs/status_tab.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool isShowFlatButton = true;
  int _selectedIndex = 0;

  final List<FloatingActionButton> _myFolatingButtons = [
    FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.message_outlined),
      backgroundColor: Color(0xff25d165),
    ),
    FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.camera_alt_outlined),
      backgroundColor: Color(0xff25d165),
    ),
    FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.call),
      backgroundColor: Color(0xff25d165),
    ),
  ];

  final List<Tab> _myTab = [
    Tab(
      text: 'Chat',
    ),
    Tab(
      text: 'Status',
    ),
    Tab(
      text: 'Chall',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
    _tabController.addListener(() {
      _selectedIndex = _tabController.index;
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff25d165),
          actions: [
            //Camera
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              ),
            ),
            //Search
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_sharp,
                color: Colors.white,
              ),
            ),
            //More
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert_outlined,
                color: Colors.white,
              ),
            ),
          ],
          title: Text(
            'WhatsApp',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          bottom: TabBar(
            tabs: _myTab,
            indicatorColor: Colors.white,
            controller: _tabController,
          ),
        ),
        floatingActionButton: _myFolatingButtons.elementAt(_selectedIndex),

        // isShowFlatButton
        //     ? FloatingActionButton(
        //         onPressed: () {},
        //         child: Icon(Icons.message_outlined),
        //         backgroundColor: Color(0xff25d165),
        //       )
        //     : null,
        body: TabBarView(
          controller: _tabController,
          children: [
            ChatsTab(),
            StatusTab(),
            Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}
