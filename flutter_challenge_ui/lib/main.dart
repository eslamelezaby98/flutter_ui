import 'package:flutter/material.dart';
import 'package:flutter_challenge_ui/page_card_challenge/page_card_challenge.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageCardChallenge(),
    );
  }
}