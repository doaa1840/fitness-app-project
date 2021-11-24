import 'package:onboarding_screen/widget lose/exercises_widgetlo.dart';

import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            ExercisesWidget(),
          ],
        ),
      );
}
