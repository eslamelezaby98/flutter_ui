import 'package:flutter/material.dart';
import 'package:instagram_ui/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        primaryColor: Colors.black,
        primarySwatch: Colors.blue,
        buttonColor: Colors.black,
        primaryIconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black,fontFamily: 'Aveny'),
        ),
        textTheme: TextTheme(bodyText1: TextStyle(color: Colors.black))
      ),
      home: MainScreen(),
    );
  }
}