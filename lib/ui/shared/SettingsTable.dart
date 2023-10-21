import 'package:flutter/material.dart';

class SettingsTable extends StatelessWidget {
  const SettingsTable({super.key, isChecked});
  final bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Table(
        border: const TableBorder(bottom: BorderSide(), horizontalInside: BorderSide()),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: <TableRow>[
          buildRow("Sprache \nApp-Sprache auswählen", false),
          buildRow("Webzugriff \nBearbeiten, um vertrauenswürdeige Domänen hinzuzufügen oder zu entfernen", false),
          buildRow("Mehrspieler-Erweiterung \nErmögliche der App, über Bluetooth freigegebene Multiplayer-Variablen zu verwenden", true),
          buildRow("Sticken \nErstelle Muster für Stickmaschinen", true),
          buildRow("Lego Mindstorms NXT Bausteine \nErlaube die Steuerung von Lego Mindstorm NXT Robotern", false),
          buildRow("Lego Mindstorms EV3 Bausteine \nErlaube die Steuerung von Lego Mindstorm EV3 Robotern", false),
          buildRow("Parrot AR.Drone 2.0 Bausteine \nErlaubt die Steuerung von ARDrone 2.0 Quadcoptern", false),
          buildRow("Parrot Jumping Sumo Bausteine \nErlaubt die Steuerung von Parrots Jumping Sumo", true),
          buildRow("Arduino Bausteine \nErlaubt die Steuerung mit Arduino Boards", true),
          buildRow("Nahfeldkommunikation \nErlaube die Nutzung von NFC-Tags in Projekten", true),
          buildRow("Raspberry Pi Bausteine \nErlaubt die Steuerung von Raspberry Pi Computern", true),
          buildRow("Phiro Bausteine \nErlaubt die Steuerung eines Phiro Roboters", true),
          buildRow("Erlaubt Cast-Funktionen \nZeigt den Cast-Button und erlaubt die Einstellung eines Cast-Projektes", true),
          buildRow("Bedienungshilfe \nAussehen der App ändern", false),
          buildRow("Hinweise anzeigen \nAktivieren um Hinweise anzuzeigen", true),
          buildRow("Erweiterung testen \nErmöglicht das Erstellen von Tests", true),
          buildRow("Sende anonyme Absturzberichte \nAbsturzberichte automatisch senden", true),
        ],
      ),
    );
  }
  TableRow buildRow(String cell, bool checkbox) => TableRow(
    children: <Widget>[
      Text(cell), 
      checkbox ? Checkbox(checkColor: Colors.black, focusColor: Colors.black ,value: true, onChanged: null) : Text(""),] 
  );
}