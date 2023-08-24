import 'package:catrobat_flutter/ui/shared/buttons/Fab.dart';
import 'package:catrobat_flutter/ui/shared/dialogs/TextDialog.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'home_page.dart';
import 'settings.dart';


class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {



  @override
  Widget build(BuildContext context) {
    Text titleTermsOfUse = const Text('Nutzungsbedingungen und Leistungen', style: TextStyle(fontSize: 16));
    Text titleAboutApp = const Text('Über die App', style: TextStyle(fontSize: 16));
    RichText contentTermsOfUse = RichText(
      text: TextSpan(
        text: "Um die App und andere Projekte welche von Catrobat zur Verfügung gestellt werden benutzen zu dürfen, muss den Nutzungsbedingungen zugestimmt  werden. Diese müssen auch während der Benutzung der App eingehaltan werden. Für weitere Informationen zu den Nutzungsbedingungen klicken Sie auf den untenstehenden Link.\n",
        // TODO: style:
        children: [
          const WidgetSpan(child: SizedBox(width: 10, height: 50)),
          TextSpan(
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
          ),
        ]
      ),
    ); 
     RichText contentAboutApp = RichText(
      text: TextSpan(
        text: "Die App ist eine Programmierumgebung und Interpreter für Android Geräte für die visuelle Programmiersprache Catrobat.\n\nDer Quellcode der App unterliegt hauptsächlich der GNU AGPL v3 Lizenz. Für weitere Informationen klicke auf den untenstehenden Link.\n",
        // TODO: style:
        children: [
          const WidgetSpan(child: SizedBox(height: 50)),
          TextSpan(
            text: 'Source Code Lizenz \n',
            //TODO: style
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
            text: 'Über Catrobat',
            //TODO: style
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
          //TODO alignment
          const TextSpan(
            text: 'Pocket Code Version: ... \n Catrobat Sprachversion: ...',
            //TODO: style
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
            var url = Uri.parse("https://wiki.catrobat.org/bin/view/Documentation/");
            launchUrl(url);
        }, 
          icon:const Icon(Icons.help_outline)),
          PopupMenuButton(itemBuilder: (context) {
            return [
              const PopupMenuItem<int>(
                value: 0,
                child: Text("Bewerte uns!"),
              ),
              const PopupMenuItem<int>(
                value: 1,
                child: Text("Nutzungsbedingungen und Leistungen"),
              ),
              const PopupMenuItem<int>(
                value: 2,
                child: Text("Datenschutz-Vereinbarung"),
              ),
              const PopupMenuItem<int>(
                value: 3,
                child: Text("Über die App"),
              ),
              const PopupMenuItem<int>(
                value: 4,
                child: Text("Scratch-Konverter BETA"),
              ),
              const PopupMenuItem<int>(
                value: 5,
                child: Text("Einstellungen"),
              ),
              const PopupMenuItem<int>(
                value: 6,
                child: Text("Anmelden"),
              ),
            ];
          }, onSelected: (value) {
            if (value == 0) {
              debugPrint("Bewerte uns pressed!");
            } else if (value == 1) {  
              TextDialog.showAlertDialog(context, titleTermsOfUse, contentTermsOfUse, actionsTermsOfUse);
            } else if (value == 2) {
            } else if (value == 3) {
              TextDialog.showAlertDialog(context, titleAboutApp, contentAboutApp, actionsTermsOfUse);
            } else if (value == 4) {
            } else if (value == 5) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) {
                  return const SettingsPage();
                }),
              );
            }
          }),
        ],
      ),
      body: const HomePage(),
      floatingActionButton: const Fab(),
    );
  }
}
