import 'package:flutter/material.dart';

class RecipeModellunch {
  String title, writer;
  int cookingTime;
  int calories;
  List<String> ingredients = [];
  List<String> preperation = [];
  String imgPath;
  RecipeModellunch({
    required this.title,
    required this.writer,
    required this.cookingTime,
    required this.calories,
    required this.imgPath,
    required this.ingredients,
    required this.preperation,
  });
  static List<RecipeModellunch> demoRecipe = [
    RecipeModellunch(
      title: 'Steak',
      writer: "Lunch",
      cookingTime: 60,
      calories: 516,
      preperation: [
        'Season the meat with salt and pepper, then set aside for 20 minutes.'
            'On a medium heat, heat half the amount of oil, then fry the meat slices on both sides until they become brown.'
            'Add the grape juice, and leave it on a low heat until the meat is tender and the liquids dry up.'
            'On a medium heat and in another pot, heat the rest of the oil, then add the green onions and stir for two minutes, then garlic and stir for one minute.'
            'Add the cream and bring it to a boil, then add the cream cheese, Parmesan, salt and black pepper, and stir until the cheese melts and the sauce thickens.'
            'Put the meat slices on serving plates, then spread the sauce over them, then decorate the dish with parsley.',
      ],
      imgPath: 'lib/resources/stake.png',
      ingredients: [
        '4 slices of steak.'
            'A cup of cooking cream.'
            '¾ cup cream cheese.'
            '½ cup grated Parmesan.'
            '¼ cup chopped green onion.'
            '¼ cup red grape juice without sugar.'
            '3 tablespoons of oil.'
            '2 tablespoons chopped parsley.'
            '5 crushed garlic cloves.'
            'Salt and black pepper.',
      ],
    ),
    RecipeModellunch(
      title: 'Colorful pasta salad',
      writer: "Lunch",
      cookingTime: 15,
      calories: 240,
      imgPath: 'lib/resources/pastac.png',
      preperation: [
        'Mix the amaranth dressing with the yoghurt and dill in a large, deep dish and mix well.'
            ' In a pot on the stove, prepare the pasta. '
            'Leave to simmer for 5 minutes, add the peas and cook for another 3 minutes,'
            ' then drain well.'
            ' Add the yellow pepper, tomato slices and pasta to the dressing mixture, '
            'and stir well until combined.'
            ' Cover the bowl and store it in the refrigerator.'
            ' Add a little dill before serving.',
      ],
      ingredients: [
        '3/4 cup low-calorie ranch dressing '
            '1/2 cup low-calorie yogurt 1 teaspoon dill,'
            ' chopped 2 cups small,'
            ' uncooked shellfish pasta'
            ' 1 1/2 cup peas '
            '1/2 yellow pepper,'
            ' small pieces 1/2 red pepper,small pieces'
            ' 3/4 cup low-fat cheddar cheese,'
            ' cut into small cubes',
      ],
    ),
    RecipeModellunch(
      title: 'Moroccan vegetable tagine ',
      writer: "Lunch",
      cookingTime: 15,
      calories: 575,
      imgPath: 'lib/resources/tagen.png',
      preperation: [
        'Heat the oil in a frying pan.'
            ' Fry the onions for 5 minutes,'
            ' until they become soft. Add spices, stirring. Add zucchini, tomatoes, chickpeas, raisins and broth.'
            ' Then leave them until the broth boils.'
            ' Leave it on the fire for 10 minutes until it becomes thick.'
            ' Add peas. And cook it for another 5 minutes.'
            ' Sprinkle with some green coriander before serving',
      ],
      ingredients: [
        '2 tablespoons olive oil'
            ' 2 onions,'
            ' chopped 1/2 teaspoon cinnamon'
            '1/2 teaspoon green coriander'
            ' 1/2 teaspoon cumin'
            ' 2 large zucchini,'
            ' chopped 400 g Chickpeas,'
            ' washed and dried 4 tablespoons raisins '
            '450 ml vegetable stock'
            ' 300 gram chopped green '
            'coriander peas',
      ],
    ),
    RecipeModellunch(
      title: 'Caesar salad with shrimp',
      writer: "Lunch",
      cookingTime: 30,
      calories: 334,
      imgPath: 'lib/resources/caesar.png',
      preperation: [
        'Preparing the dressing: Mix all the ingredients using a manual egg beater.'
            ' To prepare the salad: Mix the shrimp, croutons, fennel and lettuce in a large bowl.'
            ' Add the dressing and mix well until the salad ingredients are covered with the dressing.'
            'Sprinkle some pine nuts.',
      ],
      ingredients: [
        'Dressing: 2 tablespoons light mayonnaise'
            ' 2 tablespoons water'
            '2 tablespoons lemon juice'
            '1 tablespoon grated Parmesan cheese'
            '1/4 teaspoon black pepper'
            '1/4 teaspoon hot sauce '
            '1/8 teaspoon Worcestershire sauce'
            '2 cloves garlic'
            'Crushed salad:'
            '3/4 cup sliced ​​and toasted Zoo Fino toast '
            '2 tablespoons grated Parmesan cheese'
            '700 g Shrimp,'
            ' boiled and peeled 1 romaine lettuce 3 tablespoons pine nuts,'
            ' toasted',
      ],
    ),
    RecipeModellunch(
      title: 'Grilled fish and chips',
      writer: "Lunch",
      cookingTime: 60,
      calories: 385,
      imgPath: 'lib/resources/fish.png',
      preperation: [
        'Heat the oven.'
            'After drying the potatoes on paper towels, place them on an oven tray.'
            'Sprinkle over half of the olive oil and salt.'
            'Bake in the oven for 40 minutes,'
            'flipping it over on the other side halfway through.'
            'Mix the rusk with lemon and parsley.'
            'In another tray, place the fish fillets and the breadcrumb mixture on top,'
            'then drizzle the rest of the olive oil.'
            'Add the cherry tomato fillets and cook in the oven for 15 minutes.',
      ],
      ingredients: [
        '750 gm potatoes,'
            'peeled and chopped 2 tbsp olive oil'
            '50 gm rusk juice '
            '1 lemon'
            '2 tbsp parsley'
            '4 pieces of white fish fillet (any kind)about 150 gm each'
            '200 gm cherry tomatoes',
      ],
    ),
  ];
}
