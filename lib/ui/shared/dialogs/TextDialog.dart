import 'package:flutter/material.dart';

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
