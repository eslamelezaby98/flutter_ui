import 'dart:convert';
import 'package:flutter/material.dart';

class ComingSoonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff333333),
      body: FutureBuilder(
        future:
            DefaultAssetBundle.of(context).loadString('assets/data/data.json'),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          var newData = jsonDecode(snapshot.data.toString());
          return ListView.builder(
            itemCount: newData== null ? 0 : newData.length,
            itemBuilder: (context, index) {
              if (newData[index]['ComingSoon'] == true) {
                return Column(
                  children: [
                    // movie pic
                    Container(
                      width: screenWidth,
                      height: screenHeight * 0.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            newData[index]['Poster'],
                          ),
                        ),
                      ),
                    ),
                    //buttons
                    Container(
                      width: screenWidth,
                      height: screenHeight * 0.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildButton(
                            buttonTitle: 'Remind Me',
                            iconData: Icons.alarm,
                          ),
                          buildButton(
                            buttonTitle: 'Share',
                            iconData: Icons.share,
                          )
                        ],
                      ),
                    ),
                    // Watch Now
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Watch Now',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white60,
                            ),
                          ),
                          // Movie Name
                          SizedBox(height: 10),
                          Text(
                            newData[index]['Title'],
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          //Movie Description
                          SizedBox(height: 10),
                          Text(
                            newData[index]['Plot'],
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              } else {
                return Container();
              }
            },
          );
        },
      ),
    );
  }

   buildButton({String buttonTitle, IconData iconData}) {
    return Column(
      children: [
        Icon(
          iconData,
          color: Colors.white,
          size: 30,
        ),
        SizedBox(height: 5),
        Text(
          buttonTitle,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
