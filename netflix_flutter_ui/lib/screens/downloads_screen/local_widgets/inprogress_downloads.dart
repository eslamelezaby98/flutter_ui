import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class BuildInprogressDownload extends StatelessWidget {
  const BuildInprogressDownload({
    Key key,
    @required this.screenWidth,
    @required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      height: screenHeight * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // movie cover
              Container(
                width: screenWidth * 0.2,
                height: screenHeight * 0.1,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/movies/1.jpg',
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              // movie detials
              Column(
                mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Honest Thief',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '2 Episode | 1.5 GB',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Downloading...',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          // Download progress
          CircularPercentIndicator(
            radius: 70,
            lineWidth: 5,
            animation: true,
            percent: 0.5,
            center: Text(
              '50 %',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            circularStrokeCap: CircularStrokeCap.square,
            progressColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}