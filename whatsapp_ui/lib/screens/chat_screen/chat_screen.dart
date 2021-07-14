import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/list_of_contents.dart';
import 'package:whatsapp_ui/widgets/list_of_pinned_list.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Pinned Contents
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 10),
            child: Text(
              'Pinned Contents 📌',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // List on pinned contents
          ListOfPinnedContents(),
          SizedBox(height: 10),
          // all contents
          ListOfContents(),
        ],
      );
  }
}