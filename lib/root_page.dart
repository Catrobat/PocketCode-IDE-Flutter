import 'package:catrobat_flutter/ui/shared/buttons/Fab.dart';
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
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          'images/pc_toolbar_icon.png',
        ),
        title: const Text('Pocket Code'),
        actions: [
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
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Nutzungsbedingungen und Leistungen', style: TextStyle(fontSize: 16),),
                  content: RichText(
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
                            var url = Uri.parse("https://www.google.at");
                            if (await launchUrl(url)) {
                                await launchUrl(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                          },
                        ),
                      ]
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('OK'),
                    ),
                  ],
                  backgroundColor: Colors.black54,
                ),
              );
            } else if (value == 2) {
            } else if (value == 3) {
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
      floatingActionButton: Fab(),
    );
  }
}
