import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:onboarding_screen/login.dart';

class category {
  String name;

  String imgPath;
  List<category> subCategories;

  category(
      {required this.name, required this.imgPath, required this.subCategories});
}
