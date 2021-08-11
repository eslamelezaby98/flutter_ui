import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  bool _isDark = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff333333),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile part
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://static.independent.co.uk/s3fs-public/thumbnails/image/2015/06/06/15/Chris-Pratt.jpg',
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Jack Micheal',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Satrt Subscription at : 1 May',
                                style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'End Subscription at : 1 Jun',
                                style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Icon(
                        Icons.exit_to_app,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                // Divider
                Divider(
                  color: Colors.white,
                  height: 5,
                ),
                SizedBox(height: 10),
                // Dark Mode
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Dark Mode',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                    Switch(
                      value: _isDark,
                      onChanged: (value) {
                        setState(() {
                          _isDark = value;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Languages
                buildCard('Language'),
                SizedBox(height: 20),
                // Subscription
                buildCard('Subscription'),
                SizedBox(height: 20),
                // History
                buildCard('History'),
                SizedBox(height: 20),
                // Your Data in Netflix
                buildCard('Your Time In NetFlix'),
                SizedBox(height: 20),
                // Your Time in NetFlix
                buildCard('Help'),
                SizedBox(height: 20),
                buildCard('Delete Your Account'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCard(String cardTitle) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Card(
        elevation: 0.1,
        child: Center(
          child: Text(
            cardTitle,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        color: Color(0xff30475e),
      ),
    );
  }
}