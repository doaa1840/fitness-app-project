import 'package:flutter/material.dart';
import 'package:onboarding_screen/information.dart';
import 'package:onboarding_screen/scroll.dart';
//import 'package:onboarding_screen/information.dart';

void main() {
  runApp(BoardingScreen());
}

class BoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Test(),
    );
  }
}
