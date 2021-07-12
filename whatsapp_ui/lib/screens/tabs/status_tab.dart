import 'package:flutter/material.dart';

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
        child: ListView(
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
            SizedBox(height: 10),
            Text(
              'Recent updates',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 250,
              child: ListView.separated(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      'Eslam Elezaby',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green,
                          width: 3,
                        ),
                      ),
                      child: CircleAvatar(
                        maxRadius: 25,
                        backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100_960_720.jpg',
                        ),
                      ),
                    ),
                    subtitle: Text('Today,5:14 PM'),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              ),
            ),
            // Viewed updates
            SizedBox(height: 10),
            Text(
              'Viewed updates',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 300,
              child: ListView.separated(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      'Eslam Elezaby',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: CircleAvatar(
                      maxRadius: 25,
                      backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100_960_720.jpg',
                      ),
                    ),
                    subtitle: Text('Today,5:14 PM'),
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
