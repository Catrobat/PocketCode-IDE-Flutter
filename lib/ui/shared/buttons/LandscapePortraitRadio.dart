import 'package:flutter/material.dart';

enum ScreenMode { landscape, portrait }

class LandscapePortraitRadio extends StatefulWidget {
  const LandscapePortraitRadio({super.key});

  @override
  State<LandscapePortraitRadio> createState() => _LandscapePortraitRadioState();
}

class _LandscapePortraitRadioState extends State<LandscapePortraitRadio> {
  ScreenMode? _character = ScreenMode.portrait;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Icon(
            Icons.stay_current_portrait,
            color: Colors.white70,
          ),
          leading: Radio(
              value: ScreenMode.portrait,
              activeColor: Colors.cyan,
              groupValue: _character,
              onChanged: (ScreenMode? value) {
                setState(() {
                  _character = value;
                });
              }),
        ),
        ListTile(
          title:
              const Icon(Icons.stay_current_landscape, color: Colors.white70),
          leading: Radio(
              value: ScreenMode.landscape,
              activeColor: Colors.cyan,
              groupValue: _character,
              onChanged: (ScreenMode? value) {
                setState(() {
                  _character = value;
                });
              }),
        ),
      ],
    );
  }
}
