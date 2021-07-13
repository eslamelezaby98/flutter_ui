import 'package:flutter/material.dart';
import 'package:whatsapp_ui/constants/consttants.dart';
import 'package:whatsapp_ui/widgets/custom_nav_bar.dart';
import 'package:whatsapp_ui/widgets/list_of_contents.dart';
import 'package:whatsapp_ui/widgets/list_of_pinned_list.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          //Camera
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
              color: kPrimaryColor,
            ),
          ),
          //Search
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_sharp,
              color: kPrimaryColor,
            ),
          ),
          //More
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_outlined,
              color: kPrimaryColor,
            ),
          ),
        ],
        title: Text(
          'WhatsApp',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(color: kPrimaryColor),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              // Pinned Contents
              Padding(
                padding: const EdgeInsets.all(8.0),
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
          ),
          CustomNavBar(size: size),
        ],
      ),
    );
  }
}


