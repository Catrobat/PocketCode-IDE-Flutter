import 'package:flutter/material.dart';

class SignInRegisterDialog {
  static Future<void> signInRegisterDialog(BuildContext context, Text title, List<Widget> content, List<Widget> actions) {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => Dialog(
        backgroundColor: Colors.black54,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              title,
              Text("Custom form"), //TODO
              Text("buttons in one widget") //TODO
            ],
          ),
  
        ),
      ),
    );
  }
}
