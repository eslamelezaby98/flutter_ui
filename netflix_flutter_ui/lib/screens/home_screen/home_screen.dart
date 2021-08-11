import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:netflix_app_ui/models/data_model.dart';
import 'package:netflix_app_ui/screens/movie_screen/movie_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff333333),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                // First part of home screen
                Stack(
                  children: [
                    // Movie cover
                    Container(
                      width: screenWidth,
                      height: screenHeight * 0.7,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/movies/1.jpg'),
                        ),
                      ),
                    ),
                    // buttons to help you to play movie
                    Positioned(
                      bottom: 0,
                      width: screenWidth,
                      child: Opacity(
                        opacity: 0.8,
                        child: Container(
                          color: Colors.black,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // Add to your list
                              InkWell(
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'My List',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                onTap: () {},
                              ),
                              // Play movie or series
                              RaisedButton(
                                onPressed: () {},
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Icon(Icons.play_arrow),
                                    Text(
                                      'Play',
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ),
                              ),
                              // more info
                              InkWell(
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.info,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Info',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                onTap: () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Preview
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 15),
                  child: Text(
                    'Preview',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Movies & Series to preview
                SizedBox(height: 10),
                // List of Movies to preview
                Container(
                  height: screenHeight * 0.2,
                  child: FutureBuilder(
                    future: DefaultAssetBundle.of(context)
                        .loadString('assets/data/data.json'),
                    builder: (context, snapshot) {
                      var newData = jsonDecode(snapshot.data.toString());
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: newData == null ? 0 : newData.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CircleAvatar(
                                maxRadius: 75,
                                backgroundImage: NetworkImage(
                                  newData[index]['Poster'],
                                ),
                              ),
                            ),
                            onTap: () {
                              return showBottomSheet(
                                context: context,
                                builder: (context) {
                                  return MovieScreenPreview();
                                },
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
                // Popualr on NetFlix
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 15),
                  child: Text(
                    'Popular on Netflix',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                // List of popular of movies
                Container(
                  height: screenHeight * 0.2,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: MoviesPopular.moviePopularList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 5, left: 7),
                        child: Container(
                          height: 100,
                          width: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                MoviesPopular
                                    .moviePopularList[index].movieCover,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // Trending Now
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 15),
                  child: Text(
                    'Trending Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                //List of Moves Trending
                Container(
                  height: screenHeight * 0.2,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: MoviesTrending.moviesTrendList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 5, left: 7),
                        child: Container(
                          height: 100,
                          width: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                MoviesTrending
                                    .moviesTrendList[index].movieCover,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // Watch it again
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 15),
                  child: Text(
                    'Watch it Again',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                // List of Watch it again movies
                Container(
                  height: screenHeight * 0.2,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: MoviesPopular.moviePopularList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 5, left: 7),
                        child: Container(
                          height: 100,
                          width: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                MoviesPopular
                                    .moviePopularList[index].movieCover,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Positioned(
              top: 0,
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Container(
                // width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child:
                          Image.asset('assets/netflix_logo/netflix_logo.png'),
                    ),
                    buildTopBar('TV Show'),
                    buildTopBar('Movie'),
                    buildTopBar('My List'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text buildTopBar(String titleBar) {
    return Text(
      titleBar,
      style: TextStyle(
        color: Colors.white,
        fontSize: 17,
      ),
    );
  }
}
