import 'package:catrobat_flutter/ui/shared/dialogs/SignInRegisterDialog.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';
import 'package:sign_in_button/sign_in_button.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    bool signInIsChecked = false;
    bool registerIsChecked = false;
    bool testCondition = false; //TODO
    Text titleSignIn = const Text('Einloggen', style: TextStyle(fontSize: 16));
    Text titleRegister = const Text('Registrieren', style: TextStyle(fontSize: 16));
    Column contentSignIn = Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: "Benutzername",
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: "Passwort",
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: ListTile(
            title: const Text("Passwort anzeigen"),
            leading: Checkbox(
              value: signInIsChecked, 
              onChanged: (value) => {
                setState(() {
                  signInIsChecked = value!;
                }),
              },
            ),
          ),
        ),
      ],
    );

        Column contentRegister = Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: "Benutzername",
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: "E-Mail",
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: "Passwort",
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: "Passwort bestätigen",
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: ListTile(
            title: const Text("Passwort anzeigen"),
            leading: Checkbox(
              value: registerIsChecked, 
              onChanged: (value) => {
                setState(() {
                  registerIsChecked = value!;
                }),
              },
            ),
          ),
        ),
      ],
    );
    
    Column actionsSignIn = Column (
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: testCondition ? () {
            Navigator.pop(context);
          } : null,
          child: const Align(
            alignment: Alignment.centerRight,
            child: Text('EINLOGGEN')
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Align(
            alignment: Alignment.centerRight,
            child: Text('ABBRECHEN'),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Align(
            alignment: Alignment.centerRight,
            child: Text('PASSWORT ZURÜCKSETZEN'),
          ),
        ),
      ],
    );   

    Column actionsRegister = Column (
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: testCondition ? () {
            Navigator.pop(context);
          } : null,
          child: const Align(
            alignment: Alignment.centerRight,
            child: Text('REGISTRIEREN')
          ),
        ),
      ],
    );    

    return Scaffold(
      body: Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton (
              
              onPressed: () {
                SignInRegisterDialog.signInRegisterDialog(context, titleSignIn, contentSignIn, actionsSignIn);
              },
              child: const Text('EINLOGGEN'),
            ),
            TextButton (
              onPressed: () {
                SignInRegisterDialog.signInRegisterDialog(context, titleRegister, contentRegister, actionsRegister);
              },
              child: const Text('REGISTRIEREN'),
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