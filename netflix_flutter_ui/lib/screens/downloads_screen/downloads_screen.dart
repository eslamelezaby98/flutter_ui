import 'package:flutter/material.dart';
import 'package:netflix_app_ui/screens/downloads_screen/local_widgets/completed_downloads.dart';
import 'package:netflix_app_ui/screens/downloads_screen/local_widgets/inprogress_downloads.dart';

class DownloadsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff333333),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // smart download part
            Container(
              color: Colors.black,
              width: screenWidth,
              height: screenHeight * 0.07,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.info_rounded,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Smart Downloads',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'ON',
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.edit,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Completed Downolads
                    Text(
                      'Completed Downloads',
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    // Completed Downolads List
                    CompletedDownloadsContainer(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),
                    SizedBox(height: 10),
                    CompletedDownloadsContainer(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),
                    SizedBox(height: 10),
                    CompletedDownloadsContainer(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),
                    // Inprogress Downloads
                    SizedBox(height: 10),
                    Text(
                      'In progress Downloads',
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    // Inprogress Downloads List
                    BuildInprogressDownload(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),
                    SizedBox(height: 10),
                    BuildInprogressDownload(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
