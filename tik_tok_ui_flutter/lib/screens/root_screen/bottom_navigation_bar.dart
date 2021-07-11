import 'package:flutter/material.dart';
import 'package:tik_tok_ui_flutter/constants/tik_tok_icons.dart';
import 'package:tik_tok_ui_flutter/screens/root_screen/upload_icon.dart';
import 'package:tik_tok_ui_flutter/theme/colors.dart';

class CustomBottomNaviagtionBar extends StatefulWidget {
  @override
  _CustomBottomNaviagtionBarState createState() => _CustomBottomNaviagtionBarState();
}

class _CustomBottomNaviagtionBarState extends State<CustomBottomNaviagtionBar> {
  List bottomItems = [
    {"icon": TikTokIcons.home, "label": "Home", "isIcon": true},
    {"icon": TikTokIcons.search, "label": "Discover", "isIcon": true},
    {"icon": "", "label": "", "isIcon": false},
    {"icon": TikTokIcons.messages, "label": "Index", "isIcon": true},
    {"icon": TikTokIcons.profile, "label": "Me", "isIcon": true}
  ];
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: appBgColor,
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(bottomItems.length, (index) {
            if (bottomItems[index]['isIcon']) {
              return InkWell(
                onTap: () {
                  selectTab(index);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      bottomItems[index]['icon'],
                      color: white,
                    ),
                    SizedBox(height: 5),
                    Center(
                      child: Text(
                        bottomItems[index]['label'],
                        style: TextStyle(
                          color: white,
                          fontSize: 10,
                        ),
                      ),
                    )
                  ],
                ),
              );
            } else {
              return InkWell(
                onTap: () {
                  selectTab(index);
                },
                child: UploadIcon(),
              );
            }
          }),
        ),
      ),
    );
  }

  void selectTab(int index) {
    setState(() {
      pageIndex = index;
    });
  }
}
