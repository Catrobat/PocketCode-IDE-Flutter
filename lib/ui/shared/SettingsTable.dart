import 'package:flutter/material.dart';

class SettingsTable extends StatelessWidget {
  const SettingsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table( //TODO
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
        const TableRow(
          children: <Widget>[
          const Text("Sprache")

          ],
        ),
        const TableRow(
          children: <Widget>[
          const Text("Webzugriff")
          ],
        ),
      ],
    );
  }
}