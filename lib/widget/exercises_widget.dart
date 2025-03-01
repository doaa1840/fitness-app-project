import 'package:onboarding_screen/data/exercise_sets.dart';
import 'package:onboarding_screen/model/exercise_set.dart';
import 'package:flutter/material.dart';
import 'package:onboarding_screen/page%20lite/home_pageli.dart';
import 'package:onboarding_screen/page%20lose/home_pagelo.dart';

import 'exercise_set_widget.dart';

class ExercisesWidget extends StatefulWidget {
  @override
  _ExercisesWidgetState createState() => _ExercisesWidgetState();
}

class _ExercisesWidgetState extends State<ExercisesWidget> {
  ExerciseType selectedType = ExerciseType.build;

  @override
  Widget build(BuildContext context) => SliverPadding(
        padding: const EdgeInsets.all(16),
        sliver: SliverList(
          delegate: SliverChildListDelegate(
            [
              SizedBox(height: 8),
              Text(
                'Body Builder',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                ),
              ),
              SizedBox(height: 8),
              // buildDifficultyLevel(),
              SizedBox(height: 8),
              buildWorkouts(),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage1()));
                },
                child: Text(
                  "lite",
                  style: TextStyle(color: Colors.green),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage2()));
                },
                child: Text(
                  "lose",
                  style: TextStyle(color: Colors.green),
                ),
              )
            ],
          ),
        ),
      );

  Widget buildWorkouts() => GestureDetector(
        onHorizontalDragEnd: swipeFunction,
        child: Column(
          children: exerciseSets
              .map(
                (exerciseSet) => Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ExerciseSetWidget(exerciseSet: exerciseSet)),
              )
              .toList(),
        ),
      );

  void swipeFunction(DragEndDetails dragEndDetails) {
    final selectedIndex = ExerciseType.values.indexOf(selectedType);
    final hasNext = selectedIndex < ExerciseType.values.length;
    final hasPrevious = selectedIndex > 0;

    setState(() {
      if (dragEndDetails.primaryVelocity! < 0 && hasNext) {
        final nextType = ExerciseType.values[selectedIndex + 1];
        selectedType = nextType;
      }
      if (dragEndDetails.primaryVelocity! > 0 && hasPrevious) {
        final previousType = ExerciseType.values[selectedIndex - 1];
        selectedType = previousType;
      }
    });
  }
}
