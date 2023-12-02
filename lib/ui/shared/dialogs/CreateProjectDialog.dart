import 'package:catrobat_flutter/generated/l10n.dart';
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
              Text(S.of(context).projectname),
              TextField(
                autofocus: true,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: S.of(context).mainproject+" ()"),
              ),
              const LandscapePortraitRadio(),

              ToggleSwitch(title: S.of(context).exampleproject),

              const ToggleSwitch(title: "Beispielprojekt"),

              Row (
                mainAxisAlignment: MainAxisAlignment.end, 
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },

                    child: Text(S.of(context).cancel),

                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },

                    child: Text(S.of(context).ok),

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
