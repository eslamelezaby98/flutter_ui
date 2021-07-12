import 'package:flutter/material.dart';

class ChatsTab extends StatelessWidget {
  const ChatsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Eslam Elezaby',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '3:12',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100_960_720.jpg',
              ),
            ),
            subtitle: Text('call me...'),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
