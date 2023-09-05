import 'package:flutter/material.dart';

class SettingsTable extends StatelessWidget {
  const SettingsTable({super.key, isChecked});
  final bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Table( //TODO
      border: TableBorder(bottom: BorderSide(), horizontalInside: BorderSide()),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
        const TableRow(
          children: <Widget>[
          Text("Sprache \nApp-Sprache auswählen", style: TextStyle(color: Colors.black),),
          Text("")
          ],
        ),
        const TableRow(
          children: <Widget>[
          Text("Webzugriff \nBearbeiten, um vertrauenswürdeige Domänen hinzuzufügen oder zu entfernen", style: TextStyle(color: Colors.black)),
          Text("")
          ],
        ),
        const TableRow(
          children: <Widget>[
          Text("Mehrspieler-Erweiterung \nErmögliche der App, über Bluetooth freigegebene Multiplayer-Variablen zu verwenden", style: TextStyle(color: Colors.black)),
          const Checkbox(checkColor: Colors.black, value: true, onChanged: null), //TODO
          ],
        ),
        const TableRow(
          children: <Widget>[
            TableCell(child: Text("Sticken \nErstelle Muster für Stickmaschinen", style: TextStyle(color: Colors.black))),
            TableCell(child: Checkbox(checkColor: Colors.black, focusColor: Colors.black ,value: true, onChanged: null),), //TODO),
          ],
        ),
        const TableRow(
          children: <Widget>[
          TableCell(child: Text("Lego Mindstorms NXT Bausteine \nErlaube die Steuerung von Lego Mindstorm NXT Robotern", style: TextStyle(color: Colors.black))),
          TableCell(child: Text("")),
          ],
        ),
        const TableRow(
          children: <Widget>[
            TableCell(child: Text("Lego Mindstorms EV3 Bausteine \nErlaube die Steuerung von Lego Mindstorm EV3 Robotern", style: TextStyle(color: Colors.black)) ),
            TableCell(child: Text("")),
          ],
        ),
      ],
    );
  }
}