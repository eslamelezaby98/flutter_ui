import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PageCardChallenge extends StatefulWidget {
  const PageCardChallenge({Key? key}) : super(key: key);

  @override
  State<PageCardChallenge> createState() => _PageCardChallengeState();
}

class _PageCardChallengeState extends State<PageCardChallenge> {
  CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  dynamic selectedIndex = {};
  List<dynamic> products = const [
    {
      'title': 'Adidas Originals \nby Alexander Wang',
      'image':
          'https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fGFkaWRhc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
      'description': 'Limited collection'
    },
    {
      'title': 'Adidas Originals \nby Alexander Wang',
      'image':
          'https://images.unsplash.com/photo-1582588678413-dbf45f4823e9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2265&q=80',
      'description': 'Limited collection'
    },
    {
      'title': 'Adidas Originals \nby Alexander Wang',
      'image':
          'https://images.unsplash.com/photo-1589188056053-28910dc61d38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2264&q=80',
      'description': 'Limited collection'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'PageCardChallenge',
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: CarouselSlider(
          carouselController: carouselController,
          options: CarouselOptions(
            height: 450,
            aspectRatio: 16 / 9,
            viewportFraction: 0.70,
            enlargeCenterPage: true,
            pageSnapping: true,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          items: products
              .map((movies) => Builder(
                    builder: (context) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            if (selectedIndex == movies) {
                              selectedIndex = {};
                            } else {
                              selectedIndex = movies;
                            }
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: selectedIndex == movies
                                ? Border.all(
                                    color: Colors.blue.shade500, width: 3)
                                : null,
                            boxShadow: selectedIndex == movies
                                ? [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        blurRadius: 20,
                                        offset: const Offset(0, 5))
                                  ]
                                : [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        blurRadius: 20,
                                        offset: const Offset(0, 6))
                                  ],
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height: 320,
                                  margin: const EdgeInsets.only(top: 10),
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image.network(
                                    movies['image'],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  movies['title'],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  movies['description'],
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey.shade600,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ))
              .toList(),
        ),
      ),
    );
  }
}
