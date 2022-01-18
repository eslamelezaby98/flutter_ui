import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/data/dummy_data.dart';
import 'package:whatsapp_ui/data/story.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          children: [
            // My status
            ListTile(
              title: Text(
                'My Story',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Tap to add status update'),
              leading: Stack(
                children: [
                  CircleAvatar(
                    maxRadius: 25,
                    backgroundImage: CachedNetworkImageProvider(
                      'https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100_960_720.jpg',
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: Color(0xff25d165),
                      maxRadius: 10,
                      child: Text(
                        '+',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                itemCount: storyList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      userList[index]['name'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: Stack(
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
                            backgroundImage:
                                CachedNetworkImageProvider(userList[index]['imageUrl']),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            backgroundColor: Color(0xff25d165),
                            maxRadius: 10,
                            child: Text(
                              storyList[index]['numberOfStories'],
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    subtitle: Text(
                      storyList[index]['timeOfStory'],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
