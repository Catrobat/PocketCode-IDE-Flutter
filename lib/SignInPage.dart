import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';


class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column (
          children: [
            TextButton (
              onPressed: () {
                Navigator.pop(context); 
              },
              child:  const Text('Einloggen'),
            ),
            TextButton (
              onPressed: () {
                Navigator.pop(context); 
              },
              child:  const Text('Registrieren'),
            ),
            TextButton (
              onPressed: () {
                Navigator.pop(context); 
              },
              child:  const Text('Über Google anmelden'),
            ),
            const Text("Mit der Registrierung akzeptierst du unsere"),
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