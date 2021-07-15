import 'package:flutter/material.dart';

class InstaStory extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Stories',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Row(
        children: [
          Icon(Icons.play_arrow),
          Text(
            'Watch All',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ],
  );

  final stories = Expanded(
    child: Padding(
      padding: EdgeInsets.only(top: 8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) {
          return Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2016/05/17/22/16/baby-1399332_640.jpg'),
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 8),
              ),
              index == 0
                  ? Positioned(
                      right: 10,
                      child: CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        radius: 10,
                        child: Icon(
                          Icons.add,
                          size: 14,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Container(),
            ],
          );
        },
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          topText,
          stories,
        ],
      ),
    );
  }
}
