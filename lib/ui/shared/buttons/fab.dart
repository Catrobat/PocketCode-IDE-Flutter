import 'package:flutter/material.dart';

class fab extends StatelessWidget {
  // final onPressedFun;

  const fab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 190, 179, 71),
        onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => Dialog(
                backgroundColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Projektname'),
                      TextField(),
                      Row(children: [
                        Radio(
                          value: 1,
                          groupValue: 1,
                          onChanged: (val) {},
                        ),
                        const Icon(Icons.stay_current_portrait),
                        Radio(
                          value: 2,
                          groupValue: 1,
                          onChanged: (val) {},
                        ),
                        const Icon(Icons.stay_current_landscape),
                        // more widgets ...
                      ]),
                      Row(
                        children: [
                          //TODO: switch statefull
                          const Text("Beispielprojekt"),
                          Switch(
                              value: false,
                              onChanged: (bool value) {
                                value = !value;
                              }),
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

  onPressedFun(context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) => Dialog(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text('This is a dialog'),
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
    );
  }
}
