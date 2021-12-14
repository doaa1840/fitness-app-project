import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onboarding_screen/recep_and_ctego/categores.dart';
import 'package:onboarding_screen/recep_and_ctego/category_list.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class utils {
  static List<category> getMockedcategores() {
    return [
      category(
        name: 'BreakFast',
        imgPath: 'lib/resources/p.png',
        subCategories: [],
      ),
      category(
        name: 'Lunch',
        imgPath: 'lib/resources/l.png',
        subCategories: [],
      ),
      category(
        name: 'Dinner',
        imgPath: 'lib/resources/d.png',
        subCategories: [],
      ),
      category(
        name: 'Drinks',
        imgPath: 'lib/resources/dr.png',
        subCategories: [],
      ),
      category(
        name: 'Sweets',
        imgPath: 'lib/resources/s.png',
        subCategories: [],
      ),
    ];
  }
}
