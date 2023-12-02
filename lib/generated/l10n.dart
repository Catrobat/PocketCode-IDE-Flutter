// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `English`
  String get language {
    return Intl.message(
      'English',
      name: 'language',
      desc: 'The current Language',
      args: [],
    );
  }

  /// `Projects on the device`
  String get projectsonthedevice {
    return Intl.message(
      'Projects on the device',
      name: 'projectsonthedevice',
      desc: ' ',
      args: [],
    );
  }

  /// `Most downloaded`
  String get mostdownloaded {
    return Intl.message(
      'Most downloaded',
      name: 'mostdownloaded',
      desc: ' ',
      args: [],
    );
  }

  /// `Random projects`
  String get randomprojects {
    return Intl.message(
      'Random projects',
      name: 'randomprojects',
      desc: ' ',
      args: [],
    );
  }

  /// `Project name`
  String get projectname {
    return Intl.message(
      'Project name',
      name: 'projectname',
      desc: ' ',
      args: [],
    );
  }

  /// `Main Project`
  String get mainproject {
    return Intl.message(
      'Main Project',
      name: 'mainproject',
      desc: ' ',
      args: [],
    );
  }

  /// `Example project`
  String get exampleproject {
    return Intl.message(
      'Example project',
      name: 'exampleproject',
      desc: ' ',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: ' ',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: ' ',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
