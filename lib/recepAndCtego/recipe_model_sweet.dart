import 'package:flutter/material.dart';

class RecipeModelsweet {
  String title, writer;
  int cookingTime;
  int calories;
  List<String> ingredients = [];
  List<String> preperation = [];
  String imgPath;
  RecipeModelsweet({
    required this.title,
    required this.writer,
    required this.cookingTime,
    required this.calories,
    required this.imgPath,
    required this.ingredients,
    required this.preperation,
  });
  static List<RecipeModelsweet> demoRecipe = [
    RecipeModelsweet(
      title: 'Chocolate cheesecake',
      writer: "Desert",
      cookingTime: 60,
      calories: 210,
      preperation: [
        'Heat the oven at a temperature of 180 degrees Celsius. Put the biscuits in a food processor, crush them finely, then place them on a tray with a movable base. Put the cottage cheese and cream cheese in a bowl, and beat with an electric mixer until the ingredients are combined. Add eggs, sugar and vanilla and mix well, then add cream, starch and cocoa, and mix well. Add the chocolate chips, stir gently, then pour the mixture over the biscuits. Put the tray in another tray, larger than it, then fill half the bottom tray with water. Put the cheesecake in the oven for 75 minutes, then turn off the oven, and leave it inside for an hour. Put the cheesecake in the refrigerator overnight, then take it out and decorate it with grated chocolate, and serve cold.'
      ],
      imgPath: 'lib/resources/swe.png',
      ingredients: [
        '10 pieces of oat biscuits with chocolate.'
            '¼ cup (60 ml) low-fat whipping cream.'
            '1 ½ cup (339 g) low-fat cream cheese.'
            '1 cup (226 g) unsalted cottage cheese.'
            '½ cup (100 g) sugar. ¼ cup (50 g) raw chocolate chips.'
            '2 eggs at room temperature.'
            '6 tablespoons (60 g) raw cocoa.'
            '¼ cup (30 g) starch 1 teaspoon (5 ml) liquid vanilla.'
            'Grated raw chocolate.',
      ],
    ),
    RecipeModelsweet(
      title: 'Banana vanilla pudding',
      writer: "desert",
      cookingTime: 20,
      calories: 120,
      imgPath: 'lib/resources/swe3.png',
      preperation: [
        'Beat the cream with an electric beater, and leave it in the refrigerator. Put the milk in a saucepan over a medium heat, then add the pudding, stirring constantly, until it boils and thickens. Remove the pudding from the heat and let it cool completely, then add two cups of the whipped cream, and stir gently until the ingredients are combined. Spread a layer of wafer in serving cups, then the pudding, then the banana. Repeat the layers until you run out of the quantity, then decorate the cups from the top with the rest of the whipped cream, and a little ground wafer. Place the pudding cups in the refrigerator until serving time.',
      ],
      ingredients: [
        '4 cups (1000 ml) skim milk.'
            '2 vanilla pudding packets.'
            '3 cups (750 ml) low-fat liquid whipping cream.'
            '10 large bananas, peeled and sliced.'
            '16 pieces of crushed low fat vanilla wafer biscuits.',
      ],
    ),
    RecipeModelsweet(
      title: 'brownies ',
      writer: "desert",
      cookingTime: 80,
      calories: 150,
      imgPath: 'lib/resources/swe4.png',
      preperation: [
        'Heat the oven at a temperature of 180 degrees Celsius. Put the flour, baking powder, bicarbonate of soda and salt in a large bowl, and mix well. Put the honey in a bowl, then put it in the microwave for 30-45 seconds. Add cocoa, stir well, then set aside. Add the oil and apple and stir well, then add the egg, and stir until the ingredients are mixed. Add the flour mixture, and beat with a hand mixer until smooth. Spread the dough on a square tray covered with parchment paper, then put it in the oven for 25 minutes. Remove the brownies from the oven, and let them cool for five minutes. Remove the brownies from the tray, cut them into squares, and let them cool completely before serving.',
      ],
      ingredients: [
        '½ cup (60 g) whole wheat flour.'
            '½ cup (120 g) white honey.'
            '½ cup (120 g) unsweetened boiled and mashed apple.'
            '⅓ cup (40 g) raw cocoa 2 tablespoons (30 ml) coconut oil.'
            '½ teaspoon (2.5 ml) liquid vanilla.'
            '¼ teaspoon (1.25 g) baking powder'
            '¼ teaspoon (1.25 g) bicarbonate of soda'
            '¼ teaspoon (1.25 g) salt. an egg.',
      ],
    ),
    RecipeModelsweet(
      title: 'Cookies with chocolate chips and almonds',
      writer: "desert",
      cookingTime: 70,
      calories: 90,
      imgPath: 'lib/resources/swe5.png',
      preperation: [
        'Heat the oven at a temperature of 180 degrees Celsius. Put both butter and sugar in a large bowl, and beat with an electric mixer until fluffy. Add the egg and vanilla, and mix well. Add the flour and bicarbonate of soda and stir well, then add the chocolate and almonds and stir well. Put a tablespoon of the dough in a tray covered with butter paper. Repeat the previous step with the rest of the dough, making sure to leave a space between each ball. Place the tray in the oven for 8-11 minutes, until the cookies are golden. Take the cookies out of the oven, and let them cool down before serving.',
      ],
      ingredients: [
        '1 cup (130 g) all-purpose flour.'
            '½ cup (100 g) raw chocolate chips.'
            '½ cup (100 g) crushed almonds.'
            '¼ cup (50 g) white sugar.'
            ' ¼ cup (50 g) brown sugar.'
            '¼ cup (56.5 g) unsalted butter, at room temperature.'
            'an egg at room temperature.'
            '½ teaspoon (2.5 g) baking powder.'
            ' ¼ teaspoon (1.25 ml) liquid vanilla',
      ],
    ),
    RecipeModelsweet(
      title: 'baked potato',
      writer: "desert",
      cookingTime: 50,
      calories: 160,
      imgPath: 'lib/resources/swe7.png',
      preperation: [
        'Heat the oven at 200°C. Put the potatoes in the oven for an hour until they are soft, then remove them and let them cool completely. Peel the potatoes, then put them in a food processor, then add the butter, milk, cream and sugar of both types, and mash them well. Spread the potatoes in a tray that has been greased with a little oil or butter, then set aside. Put the butter, starch, sugar, cinnamon and pecans in a bowl, and stir until well combined. Spread the mixture on the face, then put the tray in the oven for 30 minutes, then serve the potatoes warm',
      ],
      ingredients: [
        '3 sweet potatoes.'
            '⅓ cup (80 ml) skim milk.'
            '¼ cup (60 ml) low-fat liquid whipping cream.'
            '¼ cup (56.5 g) melted butter.'
            '2 tablespoons (25 g) sugar.'
            '2 tablespoons (25 g) brown sugar.',
      ],
    ),
  ];
}
