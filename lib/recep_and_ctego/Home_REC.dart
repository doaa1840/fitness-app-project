import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onboarding_screen/recep_and_ctego/new_recipe%20_lunch.dart';
import 'package:onboarding_screen/recep_and_ctego/new_recipe.dart';
import 'package:onboarding_screen/recep_and_ctego/new_recipe_%20dinner.dart';
import 'package:onboarding_screen/recep_and_ctego/new_recipe_drink.dart';
import 'package:onboarding_screen/recep_and_ctego/new_recipe_sweet.dart';

class home_cate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          //  Column(),
          Container(
            height: size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage('lib/resources/back.png'),
                    fit: BoxFit.fill)),
          ),

          Container(
              alignment: Alignment.topCenter,
              child: Text(
                "Choos From Categories",
                style: TextStyle(fontSize: 24, color: Colors.black),
              )),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 64,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //CircleAvatar()
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      primary: false,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'lib/resources/break.png',
                                height: 128,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => new_recipe()));
                                },
                                child: Text(
                                  "BreakFast",
                                  style: TextStyle(color: Colors.brown),
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'lib/resources/lunch.png',
                                height: 128,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              new_recipe_lunch()));
                                },
                                child: Text(
                                  "LUNCH",
                                  style: TextStyle(color: Colors.brown),
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'lib/resources/dinn.png',
                                height: 128,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              new_recipedinner()));
                                },
                                child: Text(
                                  "DINNER",
                                  style: TextStyle(color: Colors.brown),
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'lib/resources/drenn.png',
                                height: 128,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              new_recipedrink()));
                                },
                                child: Text(
                                  "DRENKS",
                                  style: TextStyle(color: Colors.brown),
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'lib/resources/sweet.png',
                                height: 128,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              new_recipesweet()));
                                },
                                child: Text(
                                  "Dessert",
                                  style: TextStyle(color: Colors.brown),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                      crossAxisCount: 2),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
