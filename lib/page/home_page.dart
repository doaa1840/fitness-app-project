import 'package:onboarding_screen/widget/exercises_widget.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
