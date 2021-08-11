import 'dart:convert';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff333333),
      body: Column(
        children: [
          // Search Part
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: 'Search...',
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                // Movies
                buildTitle('Movies'),
                // List of Movies
                BuildListOfItems(type: 'movie'),
                // TV Shows
                buildTitle('TV Shows'),
                // List of series
                BuildListOfItems(type: 'series'),
                // Anime
                buildTitle('Anime'),
                // List of Anime
                BuildListOfItems(type: 'movie'),
                // Talk Shows
                buildTitle('Talk Shows'),
                // List of Talk Shows
                BuildListOfItems(type: 'series'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 15),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class BuildListOfItems extends StatelessWidget {
  final String type;
  const BuildListOfItems({
    this.type,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future:
          DefaultAssetBundle.of(context).loadString('assets/data/data.json'),
      builder: (context, snapshot) {
        var newData = jsonDecode(snapshot.data.toString());
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: newData == null ? 0 : newData.length,
            itemBuilder: (context, index) {
              if (newData[index]['Type'] == type) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          newData[index]['Poster'],
                        ),
                      ),
                    ),
                  ),
                );
              } else {
                return Container();
              }
            },
          ),
        );
      },
    );
  }
}
