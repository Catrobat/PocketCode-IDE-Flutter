import 'package:catrobat_flutter/ui/shared/buttons/LandscapePortraitRadio.dart';
import 'package:catrobat_flutter/ui/shared/buttons/ToggleSwitch.dart';
import 'package:flutter/material.dart';

class Fab extends StatelessWidget {
  // final onPressedFun;

  const Fab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 190, 179, 71),
        onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => Dialog(
                backgroundColor: Colors.black54,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Projektname'),
                      const TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: 'Mein Projekt ()'),
                      ),
                      LandscapePortraitRadio(),
                      Row(
                        children: [
                          //TODO: switch statefull
                          const Text("Beispielprojekt"),
                          ToggleSwitch()
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Close'),
                      )
                    ],
                  ),
                ),
              ),
            ),
        child: const Icon(Icons.add));
  }
}
