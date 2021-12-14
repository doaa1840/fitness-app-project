import 'package:onboarding_screen/model lite/exerciseli.dart';
import 'package:onboarding_screen/model lite/exercise_setli.dart';
import 'package:flutter/material.dart';

import 'exerciseli.dart';

final exerciseSets = [
  ExerciseSet(
    name: 'wallking',
    exercises: exercises1,
    imageUrl: 'lib/resources/wal.png',
    exerciseType: ExerciseType.lite,
    color: Colors.black.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'senior',
    exercises: exercises2,
    imageUrl: 'lib/resources/se.png',
    exerciseType: ExerciseType.lite,
    color: Colors.black.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'wallking',
    exercises: exercises3,
    imageUrl: 'lib/resources/wal.png',
    exerciseType: ExerciseType.lite,
    color: Colors.black.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'wallking',
    exercises: exercises4,
    imageUrl: 'lib/resources/wal.png',
    exerciseType: ExerciseType.lite,
    color: Colors.black.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'senior',
    exercises: exercises5,
    imageUrl: 'lib/resources/se.png',
    exerciseType: ExerciseType.lite,
    color: Colors.black.withOpacity(0.6),
  ),
];
