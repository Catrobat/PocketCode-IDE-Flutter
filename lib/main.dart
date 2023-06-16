import 'package:flutter/material.dart';
import 'package:catrobat_flutter/ui/theme/app_theme.dart';

import 'root_page.dart';

void main() {
  runApp(const PocketCodeApp());
}

class PocketCodeApp extends StatelessWidget {
  const PocketCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pocket Code',
      theme: AppTheme.appTheme,
      home: const RootPage(),
    );
  }
}

