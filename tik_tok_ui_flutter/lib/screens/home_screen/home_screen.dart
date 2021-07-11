import 'package:flutter/material.dart';
import 'package:tik_tok_ui_flutter/constants/local_json_data.dart';
import 'package:tik_tok_ui_flutter/screens/home_screen/videoPlayerItem.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: items.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return RotatedBox(
      quarterTurns: 1,
      child: TabBarView(
        controller: _tabController,
        children: List.generate(items.length, (index) {
          return VideoPlayerItem(
            size: size,
            videoUrl: items[index]['videoUrl'],
            name: items[index]['name'],
            caption: items[index]['caption'],
            songName: items[index]['songName'],
            profileImg: items[index]['profileImg'],
            likes: items[index]['likes'],
            comments: items[index]['comments'],
            shares: items[index]['shares'],
            albumImg: items[index]['albumImg'],
          );
        }),
      ),
    );
  }
}
