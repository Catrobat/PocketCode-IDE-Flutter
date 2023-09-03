import 'package:flutter/material.dart';

class Project {
  // to simulate a project that was created
  final String title;
  final String image;

  Project({
    required this.title,
    required this.image,
  });
}

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Project> projects = [
      Project(title: "My Project 1", image: "pc_toolbar_icon.png"),
      Project(title: "My Project 2", image: "pc_toolbar_icon.png"),
      Project(title: "My Project 3", image: "pc_toolbar_icon.png"),
      Project(title: "My Project 3", image: "pc_toolbar_icon.png"),
      Project(title: "My Project 3", image: "pc_toolbar_icon.png"),
      Project(title: "My Project 3", image: "pc_toolbar_icon.png"),
      Project(title: "My Project 3", image: "pc_toolbar_icon.png"),
    ];

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Meine Projekte',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          SizedBox(
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
          ),
        ],
      ),
    );
  }
}
