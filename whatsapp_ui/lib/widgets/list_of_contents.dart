import 'package:flutter/material.dart';
import 'package:whatsapp_ui/data/dummy_data.dart';

class ListOfContents extends StatelessWidget {
  const ListOfContents({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: userList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      userList[index]['name'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 2),
                    userList[index]['isOnline']
                        ? CircleAvatar(
                            backgroundColor: Colors.green,
                            maxRadius: 4,
                          )
                        : Container(),
                  ],
                ),
                Text(
                  userList[index]['timeOfLastMasseage'],
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                )
              ],
            ),
            leading: Container(
              decoration: userList[index]['hasStory']
                  ? BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.green,
                        width: 3,
                      ),
                    )
                  : null,
              child: CircleAvatar(
                maxRadius: 25,
                backgroundImage: NetworkImage(
                  userList[index]['imageUrl'],
                ),
              ),
            ),
            subtitle: Text(userList[index]['last_massege']),
          );
        },
        separatorBuilder: (BuildContext context, int index) =>
            const Divider(),
      ),
    );
  }
}