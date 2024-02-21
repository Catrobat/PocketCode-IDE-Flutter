import 'package:flutter/material.dart';

class SettingsTable extends StatefulWidget {
  const SettingsTable({Key? key, this.isChecked = false});

  final bool isChecked;

  @override
  _SettingsTableState createState() => _SettingsTableState();
}

class _SettingsTableState extends State<SettingsTable> {
  Map<String, bool> itemCheckedState = {
    "Language \nSelect app language": false,
    "Web Access \nEdit to add or remove trusted domains": false,
    "Multiplayer Extension \nEnable the app to use multiplayer variables shared over Bluetooth": false,
    "Stitching \nCreate patterns for embroidery machines": false,
    "Lego Mindstorms NXT Blocks \nAllow control of Lego Mindstorm NXT robots": false,
    "Lego Mindstorms EV3 Blocks \nAllow control of Lego Mindstorm EV3 robots": false,
    "Parrot AR.Drone 2.0 Blocks \nAllow control of ARDrone 2.0 Quadcopters": false,
    "Parrot Jumping Sumo Blocks \nAllow control of Parrot's Jumping Sumo": false,
    "Arduino Blocks \nAllow control with Arduino boards": false,
    "Near Field Communication \nAllow the use of NFC tags in projects": false,
    "Raspberry Pi Blocks \nAllow control of Raspberry Pi computers": false,
    "Phiro Blocks \nAllow control of a Phiro robot": false,
    "Enable Cast Features \nShow the Cast button and allow setting a Cast project": false,
    "Accessibility \nChange app appearance": false,
    "Show Hints \nEnable to display hints": false,
    "Test Extension \nEnable creating tests": false,
    "Send Anonymous Crash Reports \nAutomatically send crash reports": false,
  };

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: itemCheckedState.keys.map((String cell) {
          return buildRow(cell);
        }).toList(),
      ),
    );
  }

  Widget buildRow(String cell) {
    return Card(
      child: ListTile(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            cell,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        trailing: Checkbox(
          checkColor: Colors.white,
          activeColor: itemCheckedState[cell]! ? Colors.green : Colors.grey,
          value: itemCheckedState[cell],
          onChanged: (newValue) {
            setState(() {
              itemCheckedState[cell] = newValue!;
            });
          },
        ),
      ),
    );
  }
}
