import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:onboarding_screen/login.dart';

class Category {
  String name;

  String imgPath;
  List<Category> subCategories;

  Category(
      {required this.name, required this.imgPath, required this.subCategories});
}
