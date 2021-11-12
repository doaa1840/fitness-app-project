import 'package:onboarding_screen/model/exercise.dart';
import 'package:onboarding_screen/model/exercise_set.dart';
import 'package:flutter/material.dart';

import 'exercise.dart';

final exerciseSets = [
  ExerciseSet(
    name: 'Arm',
    exercises: exercises1,
    imageUrl: 'lib/resources/ar.png',
    exerciseType: ExerciseType.UpperBody,
    color: Colors.black.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Arm',
    exercises: exercises2,
    imageUrl: 'lib/resources/ar.png',
    exerciseType: ExerciseType.UpperBody,
    color: Colors.black.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Arm',
    exercises: exercises3,
    imageUrl: 'lib/resources/ar.png',
    exerciseType: ExerciseType.UpperBody,
    color: Colors.black.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Waist',
    exercises: exercises4,
    imageUrl: 'lib/resources/wai.png',
    exerciseType: ExerciseType.UpperBody,
    color: Colors.black.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Waist',
    exercises: exercises5,
    imageUrl: 'lib/resources/wai.png',
    exerciseType: ExerciseType.UpperBody,
    color: Colors.black.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Thigh exercises',
    exercises: exercises6,
    imageUrl: 'lib/resources/leg.png',
    exerciseType: ExerciseType.LowerBody,
    color: Colors.black.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Thigh exercises',
    exercises: exercises7,
    imageUrl: 'lib/resources/leg.png',
    exerciseType: ExerciseType.LowerBody,
    color: Colors.black.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Thigh exercises',
    exercises: exercises8,
    imageUrl: 'lib/resources/leg.png',
    exerciseType: ExerciseType.LowerBody,
    color: Colors.black.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Yoga',
    exercises: exercises9,
    imageUrl: 'lib/resources/yoga.png',
    exerciseType: ExerciseType.Yoga,
    color: Colors.black.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Yoga',
    exercises: exercises10,
    imageUrl: 'lib/resources/yoga.png',
    exerciseType: ExerciseType.Yoga,
    color: Colors.black.withOpacity(0.6),
  ),
];
