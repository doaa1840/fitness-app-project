import 'package:onboarding_screen/widget lite/exercises_widgetli.dart';

import 'package:flutter/material.dart';

class HomePage1 extends StatelessWidget {
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
