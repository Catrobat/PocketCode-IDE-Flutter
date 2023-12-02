import 'package:catrobat_flutter/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:catrobat_flutter/ui/theme/app_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
      supportedLocales: [
        Locale('en'),
        Locale('de')
      ],
      locale: Locale('en'),//change language code to change language
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      home: const RootPage(),
    );
  }
}

