import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/constants/consttants.dart';
import 'package:whatsapp_ui/data/dummy_data.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
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
              Icon(
                Icons.phone_callback_sharp,
                color: kPrimaryColor,
              ),
            ],
          ),
          leading: CircleAvatar(
            maxRadius: 25,
            backgroundImage: CachedNetworkImageProvider(
              userList[index]['imageUrl'],
            ),
          ),
          subtitle: Row(
            children: [
              Icon(
                Icons.call_missed_outgoing,
                color: Colors.red,
              ),
              SizedBox(width: 10),
              Text(userList[index]['timeOfLastMasseage']),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
