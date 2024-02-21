import 'package:catrobat_flutter/ui/shared/buttons/LandscapePortraitRadio.dart';
import 'package:catrobat_flutter/ui/shared/buttons/ToggleSwitch.dart';
import 'package:flutter/material.dart';

class CreateProjectDialog {
  static Future<void> createProjectDialog(BuildContext context) {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => Dialog(
        backgroundColor: Colors.black54,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Project Name'),
              const TextField(
                autofocus: true,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'My Project ()'),
              ),
              const LandscapePortraitRadio(),
              const ToggleSwitch(title: "Sample Project"),
              Row (
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('OK'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
