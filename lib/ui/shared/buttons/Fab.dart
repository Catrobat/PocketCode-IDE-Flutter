import 'package:catrobat_flutter/ui/shared/dialogs/CreateProjectDialog.dart';
import 'package:flutter/material.dart';

class Fab extends StatelessWidget {
  // final onPressedFun;

  const Fab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 190, 179, 71),
        onPressed: () => CreateProjectDialog.createProjectDialog(context),
        child: const Icon(Icons.add));
  }
}
