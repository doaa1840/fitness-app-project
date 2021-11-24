import 'package:flutter/material.dart';

import 'exerciselo.dart';

enum ExerciseType { lose }

String getExerciseName(ExerciseType type) {
  switch (type) {
    case ExerciseType.lose:
      return 'Lose Wight ';
      break;

    default:
      return 'All';
      break;
  }
}

class ExerciseSet {
  final String name;
  final List<Exercise> exercises;
  final String imageUrl;
  final ExerciseType exerciseType;
  final Color color;

  const ExerciseSet({
    required this.name,
    required this.exercises,
    required this.imageUrl,
    required this.exerciseType,
    required this.color,
  });

  /*String get totalDuration {
    final duration = exercises.fold(
      Duration.zero,
      (previous, element) => element.duration + previous,
    );*/

  // return duration.inMinutes.toString();
}
