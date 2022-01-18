import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/data/dummy_data.dart';
import 'package:whatsapp_ui/data/story.dart';

class ListOfPinnedContents extends StatelessWidget {
  const ListOfPinnedContents({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      // color: Colors.black,
      child: ListView.builder(
        itemCount: storyList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green,
                          width: 3,
                        ),
                      ),
                      child: CircleAvatar(
                        maxRadius: 25,
                        backgroundImage: CachedNetworkImageProvider(
                            userList[index]['imageUrl']),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Color(0xff25d165),
                        maxRadius: 10,
                        child: Text(
                          storyList[index]
                              ['numberOfStories'],
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  storyList[index]['name'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}