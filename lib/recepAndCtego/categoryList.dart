import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onboarding_screen/recepAndCtego/categores.dart';
import 'package:onboarding_screen/recepAndCtego/categoryList.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class Utils {
  static List<Category> getMockedcategores() {
    return [
      Category(
        name: 'BreakFast',
        imgPath: 'lib/resources/p.png',
        subCategories: [],
      ),
      Category(
        name: 'Lunch',
        imgPath: 'lib/resources/l.png',
        subCategories: [],
      ),
      Category(
        name: 'Dinner',
        imgPath: 'lib/resources/d.png',
        subCategories: [],
      ),
      Category(
        name: 'Drinks',
        imgPath: 'lib/resources/dr.png',
        subCategories: [],
      ),
      Category(
        name: 'Sweets',
        imgPath: 'lib/resources/s.png',
        subCategories: [],
      ),
    ];
  }
}
