import 'package:onboarding_screen/model/exercise.dart';
import 'package:onboarding_screen/model/exercise_set.dart';
import 'package:flutter/material.dart';

import 'exercise.dart';

final exerciseSets = [
  ExerciseSet(
    name: 'Arm',
    exercises: exercises1,
    imageUrl: 'lib/resources/workout1.png',
    exerciseType: ExerciseType.UpperBody,
    color: Colors.pink.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Arm',
    exercises: exercises2,
    imageUrl: 'lib/resources/workout1.png',
    exerciseType: ExerciseType.UpperBody,
    color: Colors.pink.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Arm',
    exercises: exercises3,
    imageUrl: 'lib/resources/crunch.png',
    exerciseType: ExerciseType.UpperBody,
    color: Colors.green.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Waist',
    exercises: exercises4,
    imageUrl: 'lib/resources/pushup.png',
    exerciseType: ExerciseType.UpperBody,
    color: Colors.pink.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Waist',
    exercises: exercises5,
    imageUrl: 'lib/resources/yoga.png',
    exerciseType: ExerciseType.UpperBody,
    color: Colors.green.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Core',
    exercises: exercises1,
    imageUrl: 'lib/resources/workout3.png',
    exerciseType: ExerciseType.LowerBody,
    color: Colors.pink.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Cardio',
    exercises: exercises1,
    imageUrl: 'lib/resources/workout1.png',
    exerciseType: ExerciseType.LowerBody,
    color: Colors.green.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Yoga',
    exercises: exercises1,
    imageUrl: 'lib/resources/yoga.png',
    exerciseType: ExerciseType.LowerBody,
    color: Colors.pink.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Abs',
    exercises: exercises1,
    imageUrl: 'lib/resources/crunch.png',
    exerciseType: ExerciseType.LowerBody,
    color: Colors.green.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Acrobatic',
    exercises: exercises1,
    imageUrl: 'lib/resources/workout3.png',
    exerciseType: ExerciseType.Yoga,
    color: Colors.green.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Hands',
    exercises: exercises1,
    imageUrl: 'lib/resources/pushup.png',
    exerciseType: ExerciseType.Yoga,
    color: Colors.pink.shade100.withOpacity(0.6),
  ),
];
