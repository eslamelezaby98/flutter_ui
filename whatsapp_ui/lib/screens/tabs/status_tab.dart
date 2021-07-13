import 'package:flutter/material.dart';
import 'package:whatsapp_ui/data/dummy_data.dart';

class StatusTab extends StatelessWidget {
  const StatusTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 110,
        child: Column(
          children: [
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Color(0xff25d165),
              child: Icon(Icons.edit),
              mini: true,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          children: [
            // My status
            ListTile(
              title: Text(
                'My status',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Tap to add status update'),
              leading: Stack(
                children: [
                  CircleAvatar(
                    maxRadius: 25,
                    backgroundImage: NetworkImage(
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
            // Recent updates
            Text(
              'Recent updates',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: ListView.separated(
                itemCount: storyRecentUpdate.length,
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
                                NetworkImage(userList[index]['imageUrl']),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            backgroundColor: Color(0xff25d165),
                            maxRadius: 10,
                            child: Text(
                              storyRecentUpdate[index]['numberOfStories'],
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    subtitle: Text(
                      storyRecentUpdate[index]['timeOfStory'],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              ),
            ),
            // Viewed updates
            Text(
              'Viewed updates',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            Flexible(
              flex: 2,
              child: ListView.separated(
                itemCount: storyViewedUpdate.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      storyViewedUpdate[index]['name'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: CircleAvatar(
                      maxRadius: 25,
                      backgroundImage: NetworkImage(
                        storyViewedUpdate[index]['storyImageUrl'],
                      ),
                    ),
                    subtitle: Text(
                      storyViewedUpdate[index]['timeOfStory'],
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
