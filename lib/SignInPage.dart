import 'package:catrobat_flutter/ui/shared/dialogs/SignInRegisterDialog.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';
import 'package:sign_in_button/sign_in_button.dart';

import 'package:catrobat_flutter/ui/shared/dialogs/TextDialog.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    Text titleSignIn = const Text('Einloggen', style: TextStyle(fontSize: 16));
    List<Widget> contentSignIn =  <Widget>[
      TextFormField(
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          labelText: "Benutzername",
        ),
      ),
    ];
    List<Widget> actionsSignIn =  <Widget>[
      TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('EINLOGGEN'),
      ),
      TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('ABBRECHEN'),
      ),
      TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('PASSWORT ZURÜCKSETZEN'),
      ),
    ];
    return Scaffold(
      body: Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton (
              onPressed: () {
                Navigator.pop(context); 
                SignInRegisterDialog.signInRegisterDialog(context, titleSignIn, contentSignIn, actionsSignIn);

              },
              child:  const Text('EINLOGGEN'),
            ),
            TextButton (
              onPressed: () {
                Navigator.pop(context); 
              },
              child:  const Text('REGISTRIEREN'),
            ),

            SignInButton(
              Buttons.google, 
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar( //TODO open google login
                    content: Text("Google Button Pressed!"),
                    duration: Duration(milliseconds: 400),
                  ),
                );
              } 
            ),
            const Text("Mit der Registrierung akzeptierst du unsere", 
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0)
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Nutzungsbedingungen und Leistungen',
                //TODO: style
                style: const TextStyle(
                  color: Color.fromARGB(255, 205, 116, 0),  
                ),
                recognizer: TapGestureRecognizer()..onTap =  () async {
                  var url = Uri.parse("https://share.catrob.at/");
                  if (await launchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
              ) 
            ),
          ],
        ),          
      ),
    );
  }
}