import 'package:flutter/material.dart';

class MovieScreenPreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: Color(0xff333333),
      width: screenWidth,
      height: screenHeight * 0.7,
      child: Column(
        children: [
          // movie pic
          Container(
            width: screenWidth,
            height: screenHeight * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://mp3skull.shop/wp-content/uploads/2019/08/13-Reasons-Why-Season-3.jpg',
                ),
              ),
            ),
          ),
          //buttons
          Container(
            width: screenWidth,
            height: screenHeight * 0.09,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(7.0),
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
          ),
          // Watch Now
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Watch Now
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
                  '13 Reason Why Season 3',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                //Movie Description
                SizedBox(height: 10),
                Text(
                  'Thirteen Reasons Why, based on the best-selling books by Jay Asher, follows teenager Clay Jensen (Dylan Minnette) as'
                  'he returns home from school to find a mysterious box with his name on it lying on his porch. Inside he discovers'
                  'a group of cassette tapes recorded by Hannah Baker (Katherine Langford) -his classmate and crush-who tragically'
                  'committed suicide two weeks earlier. On tape, Hannah unfolds an emotional audio diary, detailing the thirteen ',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildButton({String buttonTitle, IconData iconData}) {
    return Container(
      child: Column(
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
      ),
    );
  }
}
