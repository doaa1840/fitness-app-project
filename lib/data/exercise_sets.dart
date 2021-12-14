import 'package:onboarding_screen/model/exercise.dart';
import 'package:onboarding_screen/model/exercise_set.dart';
import 'package:flutter/material.dart';

import 'exercise.dart';

final exerciseSets = [
  ExerciseSet(
    name: 'Wide grip pull-down',
    exercises: exercises1,
    imageUrl: 'lib/resources/ar.png',
    // exerciseType: ExerciseType.build,
    color: Colors.black.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Wide grip pull-down',
    exercises: exercises2,
    imageUrl: 'lib/resources/ar.png',
    // exerciseType: ExerciseType.build,
    color: Colors.black.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Bent-over row',
    exercises: exercises3,
    imageUrl: 'lib/resources/ar.png',
    //exerciseType: ExerciseType.build,
    color: Colors.black.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Bent-over row',
    exercises: exercises4,
    imageUrl: 'lib/resources/wai.png',
    //exerciseType: ExerciseType.build,
    color: Colors.black.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Deadlift',
    exercises: exercises5,
    imageUrl: 'lib/resources/wai.png',
    // exerciseType: ExerciseType.build,
    color: Colors.black.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Deadlift',
    exercises: exercises6,
    imageUrl: 'lib/resources/ded.png',
    //exerciseType: ExerciseType.build,
    color: Colors.black.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Dumbbell lateral raise',
    exercises: exercises7,
    imageUrl: 'lib/resources/dum.png',
    //exerciseType: ExerciseType.build,
    color: Colors.black.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Dumbbell lateral raise',
    exercises: exercises8,
    imageUrl: 'lib/resources/dum.png',
    // exerciseType: ExerciseType.build,
    color: Colors.black.withOpacity(0.6),
  ),
];
