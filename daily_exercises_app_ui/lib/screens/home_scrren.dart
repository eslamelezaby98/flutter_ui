import 'package:daily_exercises_app_ui/screens/details_screen.dart';
import 'package:daily_exercises_app_ui/widgets/bottom_bar.dart';
import 'package:daily_exercises_app_ui/widgets/category_card.dart';
import 'package:daily_exercises_app_ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
                alignment: Alignment.centerLeft,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text(
                    'Good Morning \nEslam',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        CategoryCard(
                          onTap: () {},
                          title: 'Diet Recommendation',
                          svgPic: 'assets/icons/Hamburger.svg',
                        ),
                        CategoryCard(
                          title: "Kegel Exercises",
                          svgPic: "assets/icons/Excrecises.svg",
                          onTap: () {},
                        ),
                        CategoryCard(
                          title: "Kegel Exercises",
                          svgPic: "assets/icons/Excrecises.svg",
                          onTap: () {},
                        ),
                        CategoryCard(
                          title: "Meditation",
                          svgPic: "assets/icons/Meditation.svg",
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetialsScreen();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Yoga",
                          svgPic: "assets/icons/yoga.svg",
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
