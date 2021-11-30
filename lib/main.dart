import 'package:flutter/material.dart';
import 'package:onboarding_screen/information.dart';
import 'package:onboarding_screen/page/home_page.dart';
import 'package:onboarding_screen/recep_and_ctego/home_rec.dart';
import 'package:onboarding_screen/scroll.dart';

import 'main_page.dart';
//import 'package:onboarding_screen/information.dart';

void main() {
  runApp(BoardingScreen());
}

class BoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_cate(),
      //BoardingPage(),
      //Test(),
    );
  }
}
