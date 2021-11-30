import 'package:flutter/material.dart';

class RecipeModeldrink {
  String title, writer;
  int cookingTime;
  int calories;
  List<String> ingredients = [];
  List<String> preperation = [];
  String imgPath;
  RecipeModeldrink({
    required this.title,
    required this.writer,
    //required this.description,
    required this.cookingTime,
    required this.calories,
    required this.imgPath,
    required this.ingredients,
    required this.preperation,
  });
  static List<RecipeModeldrink> demoRecipe = [
    RecipeModeldrink(
      title: 'Pineapple, apple and orange juice',
      writer: "Drink",
      //description:
      //'A touch of lemon juice, fresh lettuce, and a few greens make for a great taste and healthy meal, without much effort!',
      cookingTime: 15,
      calories: 85,
      preperation: [
        'Cut 3 slices of pineapple into several cubes.'
            'Slice an apple without removing the peel.'
            'Pour the chopped fruit into the blender cup and process it with ½ cup of orange juice.'
      ],
      imgPath: 'lib/resources/pinnn.png',
      ingredients: [
        '1 apple.'
            'Orange juice (100 ml).'
            'Natural pineapple slices (to taste).',
      ],
    ),
    RecipeModeldrink(
      title: 'Pomegranate and strawberry juice',
      writer: "Drink",
      cookingTime: 15,
      calories: 45,
      imgPath: 'lib/resources/stro.png',
      preperation: [
        'Combine all ingredients in a blender and process for a few minutes.'
            'Once you get a smooth drink, serve it right away.',
      ],
      ingredients: [
        'Yogurt (100 g).'
            'Frozen strawberries (80 g).'
            'Pomegranate juice (100 ml).',
      ],
    ),
    RecipeModeldrink(
      title: 'Pineapple, Banana and Spinach Smoothie ',
      writer: "Drink",
      cookingTime: 15,
      calories: 70,
      imgPath: 'lib/resources/banan.png',
      preperation: [
        'Cut 2 slices of pineapple and a ripe banana.'
            'Put it in a blender and add 6 spinach leaves and almond milk.'
            'Process everything for 2 or 3 minutes, until you get a homogeneous drink.'
            'Serve with ice to taste.',
      ],
      ingredients: [
        'pineapple.'
            'spinach.'
            'Ripe banana.'
            '1 cup of almond milk (250 ml).'
            'Optional: ice cubes.',
      ],
    ),
    RecipeModeldrink(
      title: 'Watermelon, strawberry and lemon juice',
      writer: "Drink",
      cookingTime: 10,
      calories: 100,
      imgPath: 'lib/resources/lemon.png',
      preperation: [
        'Cut two pieces of watermelon into several cubes.'
            'Wash and chop the strawberries.'
            'Pour everything into the blender, including the water and lemon juice.'
            'Process for 2 minutes, until everything is well combined.',
      ],
      ingredients: [
        'strawberry (80 g).'
            'water (200 ml).'
            'Lemon juice (30 ml).'
            'watermelon slices',
      ],
    ),
    RecipeModeldrink(
      title: 'Strawberry and Banana Smoothie',
      writer: "drink",
      cookingTime: 10,
      calories: 110,
      imgPath: 'lib/resources/smoo.png',
      preperation: [
        'Add strawberries and bananas to the blender cup.'
            'Add the almond milk and process on medium speed for 2 or 3 minutes.',
      ],
      ingredients: [
        '1 ripe banana'
            'Frozen strawberries (80 g).'
            'Almond milk (125 ml)',
      ],
    ),
  ];
}
