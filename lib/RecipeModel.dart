import 'package:flutter/material.dart';

class RecipeModel {
  String title, writer, description;
  int cookingTime;
  int servings;
  List<String> ingredients = [];
  List<String> preperation = [];
  String imgPath;
  RecipeModel({
    required this.title,
    required this.writer,
    required this.description,
    required this.cookingTime,
    required this.servings,
    required this.imgPath,
    required this.ingredients,
    required this.preperation,
  });
  static List<RecipeModel> demoRecipe = [
    RecipeModel(
      title: 'Green Salad',
      writer: "BreakFast",
      description:
          'A touch of lemon juice, fresh lettuce, and a few greens make for a great taste and healthy meal, without much effort!',
      cookingTime: 10,
      servings: 90,
      preperation: [
        'After preparing the vegetable salad ingredients follow these steps Mix the cucumber, tomato, onion, pepper, radish, jicama, and lettuce together in a large bowlWhisk garlic, lemon juice, olive oil, pomegranate juice, salt, pepper, dill, basil, and water together in a small bowl.Add the ingredients for the small bowl (sauce) over the salad just before serving.'
      ],
      imgPath: 'lib/resources/img1.png',
      ingredients: [
        '1 chopped cucumber',
        '2 fresh chopped tomatoes.',
        '2 chopped green onions.',
        '1 chopped red pepper.',
        '5 chopped radishes.',
        '1 small guyama, peeled.',
        '5 lettuce leaves, cut into small pieces.',
        '1 clove minced garlic.',
        '1 and 1/2 tablespoon lemon juice.',
        '2 tablespoons olive oil.',
        '1 tablespoon of pomegranate juice.',
        '1 teaspoon of salt.',
        '1 teaspoon of ground black pepper.',
        '1 teaspoon chopped fresh dill.',
        '1 teaspoon finely chopped fresh basil.',
        '1 and 1/2 teaspoon water.',
      ],
    ),
    RecipeModel(
      title: 'Avocado sandwich with eggs',
      writer: "Break Fast",
      description: '',
      cookingTime: 20,
      servings: 170,
      imgPath: 'lib/resources/img2.png',
      preperation: [
        '1. Cut the baguette horizontally into two equal parts and grease the bottom with cream cheese.',
        '2. Peel the avocado, cut it into slices and place it on top of the cream cheese.',
        '3. Cut the boiled eggs into circles and place them on top of the avocado slices.',
        '4. Sprinkle a little salt, black pepper and paprika on top of the ingredients.',
        '5. Cover the ingredients with the top layer of bread and serve directly on your meal.',
      ],
      ingredients: [
        'Baguette bread: 2 pieces (brown / small)',
        'Cream cheese: 2 tablespoons (lite)',
        'Avocado: 1 piece',
        'Salt: a pinch',
        'Paprika: a sprinkle',
        'Black pepper: a pinch',
        'Green onions: 2 tablespoons (chopped)',
        'Eggs: 2 tablets (boiled)',
      ],
    ),
    RecipeModel(
      title: 'Sheet Pan Sausage and Egg Breakfast Bake ',
      writer: "Imran Sefat",
      description:
          'A hearty breakfast that easily feeds a family of four, all on one sheet pan? Yes, please.',
      cookingTime: 10,
      servings: 4,
      imgPath: 'lib/resources/img3.png',
      preperation: [],
      ingredients: [
        '8 large eggs',
        '1 tsp. Dijon mustard',
        'Kosher salt and pepper',
        '1 tbsp. olive oil or unsalted butter',
        '2 slices thick-cut bacon, cooked and broken into pieces',
        '2 c. spinach, torn',
        '2 oz. Gruyère cheese, shredded',
      ],
    ),
    RecipeModel(
      title: 'Shakshuka',
      writer: "Imran Sefat",
      description:
          'Just wait til you break this one out at the breakfast table: sweet tomatoes, runny yolks, and plenty of toasted bread for dipping.',
      cookingTime: 10,
      servings: 4,
      imgPath: 'lib/resources/img4.png',
      preperation: [],
      ingredients: [
        '8 large eggs',
        '1 tsp. Dijon mustard',
        'Kosher salt and pepper',
        '1 tbsp. olive oil or unsalted butter',
        '2 slices thick-cut bacon, cooked and broken into pieces',
        '2 c. spinach, torn',
        '2 oz. Gruyère cheese, shredded',
      ],
    ),
    RecipeModel(
      title: 'Pancack',
      writer: "Imran Sefat",
      description:
          'Just wait til you break this one out at the breakfast table: sweet tomatoes, runny yolks, and plenty of toasted bread for dipping.',
      cookingTime: 10,
      servings: 4,
      imgPath: 'lib/resources/img5.png',
      preperation: [],
      ingredients: [
        '8 large eggs',
        '1 tsp. Dijon mustard',
        'Kosher salt and pepper',
        '1 tbsp. olive oil or unsalted butter',
        '2 slices thick-cut bacon, cooked and broken into pieces',
        '2 c. spinach, torn',
        '2 oz. Gruyère cheese, shredded',
      ],
    ),
  ];
}
