import 'package:flutter/material.dart';
import 'package:onboarding_screen/LineChartWidget.dart';

class homeEX extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            buildAppBar(context),
          ],
        ),
      );

  SliverAppBar buildAppBar(BuildContext context) => SliverAppBar(
        flexibleSpace: FlexibleSpaceBar(
          background: LineChartWidget(),
        ),
        expandedHeight: MediaQuery.of(context).size.height * 0.5,
        stretch: true,
        title: Text('Exercises'),
        centerTitle: true,
        pinned: true,
        actions: [
          Icon(
            Icons.person,
            size: 28,
          ),
          SizedBox(
            width: 12,
          )
        ],
      );
}
