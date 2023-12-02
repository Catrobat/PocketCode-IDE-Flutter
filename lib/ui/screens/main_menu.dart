import 'package:catrobat_flutter/ui/screens/my_project.dart';
import 'package:catrobat_flutter/ui/shared/lists/horizontal_list.dart';
import 'package:flutter/material.dart';
import 'package:catrobat_flutter/generated/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../service/Project.dart';

class MainMenu extends StatelessWidget {

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

    return Column(
      children: [
        GestureDetector(
            onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyProject(projectName: projects[0].title))),
                },
            child: Card(
              child: Center(child: Image.asset("images/" + projects[0].image)),
            )),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Text(
                          S.of(context).projectsonthedevice,
                          style: TextStyle(fontSize: 22, color: Colors.black),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Icon(Icons.arrow_forward_rounded),
                        ),
                      ],
                    ),
                  ),
                ),
                HorizontalList(projects: projects),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          S.of(context).mostdownloaded,
                          style: TextStyle(fontSize: 22, color: Colors.black),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Icon(Icons.arrow_forward_rounded),
                        ),
                      ],
                    ),
                  ),
                ),
                HorizontalList(projects: projects),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          S.of(context).randomprojects,
                          style: TextStyle(fontSize: 22, color: Colors.black),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Icon(Icons.arrow_forward_rounded),
                        ),
                      ],
                    ),
                  ),
                ),
                HorizontalList(projects: projects)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
