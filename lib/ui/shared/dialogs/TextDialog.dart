import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TextDialog {

  static Future<void> showAlertDialog(BuildContext context, Text title, RichText content, List<Widget> actions) {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: title,
        content: content,
        actions: actions,
        backgroundColor: Colors.black54,
      ),
    );
  }
}
