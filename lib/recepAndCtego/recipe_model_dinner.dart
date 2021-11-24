import 'package:flutter/material.dart';

class RecipeModeldinner {
  String title, writer;
  int cookingTime;
  int calories;
  List<String> ingredients = [];
  List<String> preperation = [];
  String imgPath;
  RecipeModeldinner({
    required this.title,
    required this.writer,
    required this.cookingTime,
    required this.calories,
    required this.imgPath,
    required this.ingredients,
    required this.preperation,
  });
  static List<RecipeModeldinner> demoRecipe = [
    RecipeModeldinner(
      title: 'Tuna stuffed peppers',
      writer: "dinner",
      cookingTime: 15,
      calories: 253,
      preperation: [
        'To get started, wash the peppers well and preheat the oven to 180°C.'
            'After the oven temperature reaches 180°C, place the peppers on a baking sheet in the oven for 45 minutes.'
            'Meanwhile, prepare the rest of the ingredients. Start by chopping the onion into small pieces and mixing it with the tuna. Then add a little salt and pepper as per your preference.'
            'After the peppers are cooked, remove them from the oven and let them cool slightly. Then remove the dark outer layer that has formed.'
            'Open the pepper from the top, remove the seeds from the inside, and fill it with the tuna and onion mixture.'
            'Add a little mozzarella on top and put it in the oven again for 2 to 3 minutes'
      ],
      imgPath: 'lib/resources/felfel.png',
      ingredients: [
        'red pepper (149 g)'
            'Can Light Tuna (85 g)'
            'Onion (100 g)'
            'Salt and Pepper'
            'Light Mozzarella Cheese (20 g)',
      ],
    ),
    RecipeModeldinner(
      title: 'Vegetable pasta',
      writer: "Dinner",
      cookingTime: 20,
      calories: 281,
      imgPath: 'lib/resources/passv.png',
      preperation: [
        'Cook the pasta in boiling water with two tablespoons of olive oil and a pinch of salt.'
            'After cooking, drain the pasta and set it aside.'
            'In a saucepan, heat the remaining olive oil and cook the asparagus until softened.'
            'In the same pot, add the chopped tomatoes, crushed garlic clove, and a little apple cider vinegar.'
            'After the mixture has cooked slightly, add the pasta and stir for 2 minutes.'
            'Finally, serve the dish after grating a little Parmesan on top.',
      ],
      ingredients: [
        'Pasta (150 g)'
            '4 tablespoons of olive oil (60 ml)'
            'salt (according to your preference)'
            'Asparagus (100 g)'
            'Tomato (20 g)'
            'clove of garlic'
            '2 tablespoons (30 ml) apple cider vinegar'
            'Parmesan cheese (20 g)',
      ],
    ),
    RecipeModeldinner(
      title: 'Chicken and vegetable tortilla chips ',
      writer: "dinner",
      cookingTime: 45,
      calories: 243,
      imgPath: 'lib/resources/chips.png',
      preperation: [
        'Cut the pepper and onion into long strips.'
            'Heat a little olive oil in a saucepan and sauté the vegetables for 5 minutes.'
            'Meanwhile, cut the chicken into strips and add to the pot with the rest of the vegetables.'
            'Cook together for 5 minutes or until all ingredients are cooked to your liking.'
            'Now add salt and pepper to your taste.'
            'Finally, heat the tortilla chips in a clean skillet.'
            'After the tortillas are heated (1-2 minutes), add the chicken and vegetable mixture in the middle.'
            'Roll the tortilla and have fun!',
      ],
      ingredients: [
        'Corn tortilla (29 g)'
            'Chicken (50 g)'
            'Onion (50 g)'
            'green pepper (100 g)'
            'red pepper (100 g)',
      ],
    ),
  ];
}
