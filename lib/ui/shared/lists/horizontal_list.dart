import 'package:flutter/material.dart';

import '../../../service/Project.dart';

class HorizontalList extends StatelessWidget {
  final List<Project> projects;
  const HorizontalList({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.0,
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: projects.length,
        itemBuilder: (BuildContext context, int index) => Card(
          child: Center(child: Image.asset("images/" + projects[index].image)),
        ),
      ),
    );
  }
}
