import 'package:catrobat_flutter/ui/shared/buttons/Fab.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'SignInPage.dart';
import 'home_page.dart';
import 'settings.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:catrobat_flutter/ui/shared/dialogs/TextDialog.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    Text titleTermsOfUse = const Text('Terms of Use and Services', style: TextStyle(fontSize: 16));
    Text titleAboutApp = const Text('About the App', style: TextStyle(fontSize: 16));
    RichText contentTermsOfUse = RichText(
      text: TextSpan(
          text: "To use the app and other projects provided by Catrobat, you must agree to the terms of use. These must also be adhered to while using the app. For more information on the terms of use, click on the link below.\n",
          children: [
            const WidgetSpan(child: SizedBox(width: 10, height: 50)),
            TextSpan(
              text: 'Terms of Use and Services',
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
            ),
          ]
      ),
    );
    RichText contentAboutApp = RichText(
      text: TextSpan(
          text: "The app is a programming environment and interpreter for Android devices for the visual programming language Catrobat.\n\nThe source code of the app is mainly under the GNU AGPL v3 license. For more information, click on the link below.\n",
          children: [
            const WidgetSpan(child: SizedBox(height: 50)),
            TextSpan(
              text: 'Source Code License \n',
              style: const TextStyle(
                color: Color.fromARGB(255, 205, 116, 0),
              ),
              recognizer: TapGestureRecognizer()..onTap =  () async {
                var url = Uri.parse("https://developer.catrobat.org/licenses");
                if (await launchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
            ),
            TextSpan(
              text: 'About Catrobat',
              style: const TextStyle(
                color: Color.fromARGB(255, 205, 116, 0),
              ),
              recognizer: TapGestureRecognizer()..onTap =  () async {
                var url = Uri.parse("https://catrobat.org/");
                if (await launchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
            ),
            const TextSpan(
              text: 'Pocket Code Version: ... \n Catrobat Language Version: ...',
              style: TextStyle(
                fontSize: 10,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ]
      ),
    );
    List<Widget> actionsTermsOfUse =  <Widget>[
      TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('OK'),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          'images/pc_toolbar_icon.png',
        ),
        title: const Text('Pocket Code'),
        actions: [
          IconButton(
              onPressed: () async {
                var url = Uri.parse("https://catrob.at/help");
                launchUrl(url);
              },
              icon:const Icon(Icons.help_outline)),
          PopupMenuButton(itemBuilder: (context) {
            return [
              const PopupMenuItem<int>(
                value: 0,
                child: Text("Rate Us!"),
              ),
              const PopupMenuItem<int>(
                value: 1,
                child: Text("Terms of Use and Services"),
              ),
              const PopupMenuItem<int>(
                value: 2,
                child: Text("Privacy Policy"),
              ),
              const PopupMenuItem<int>(
                value: 3,
                child: Text("About the App"),
              ),
              const PopupMenuItem<int>(
                value: 4,
                child: Text("Scratch Converter BETA"),
              ),
              const PopupMenuItem<int>(
                value: 5,
                child: Text("Settings"),
              ),
              const PopupMenuItem<int>(
                value: 6,
                child: Text("Sign In"),
              ),
            ];
          }, onSelected: (value) {
            if (value == 0) {
              //TODO
            } else if (value == 1) {
              TextDialog.showAlertDialog(context, titleTermsOfUse, contentTermsOfUse, actionsTermsOfUse);
            } else if (value == 2) {
              var url = Uri.parse("https://catrob.at/privacypolicy");
              launchUrl(url);
            } else if (value == 3) {
              TextDialog.showAlertDialog(context, titleAboutApp, contentAboutApp, actionsTermsOfUse);
            } else if (value == 4) {
              //TODO
            } else if (value == 5) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) {
                  return const SettingsPage();
                }),
              );
            } else if (value == 6) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) {
                  return const SignInPage();
                }),
              );
            }
          }),
        ],
      ),
      body: HomePage(),
      floatingActionButton: const Fab(),
    );
  }
}
