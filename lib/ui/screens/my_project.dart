import 'package:catrobat_flutter/ui/shared/buttons/Fab.dart';
import 'package:flutter/material.dart';

class MyProject extends StatefulWidget {
  final String projectName;

  const MyProject({super.key, required this.projectName});

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(widget.projectName),
      ),
      floatingActionButton: const Fab(),
    );
  }
}
