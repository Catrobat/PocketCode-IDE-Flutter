import 'package:flutter/material.dart';

import 'package:catrobat_flutter/ui/shared/SettingsTable.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Einstellungen'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          }, 
          icon:const Icon(Icons.arrow_back_ios)
        ),
      ),
      body: SettingsTable(),
    );
  }
}