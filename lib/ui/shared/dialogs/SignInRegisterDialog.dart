import 'package:flutter/material.dart';

class SignInRegisterDialog {
  static Future<void> signInRegisterDialog(BuildContext context, Text title, Column content, Column actions) {
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
              content,
              actions
            ],
          ),
  
        ),
      ),
    );
  }
}
