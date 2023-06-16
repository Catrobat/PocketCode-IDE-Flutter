import 'package:flutter/material.dart';

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
        leading: Image.asset('images/pc_toolbar_icon.png',
        ),
        title: const Text('Pocket Code'),      
        actions: [
        PopupMenuButton(
          itemBuilder: (context){
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
          },
          onSelected:(value){
            if(value == 0){
                debugPrint("Bewerte und pressed!");
            } else if(value == 1){
                
            } else if(value == 2){
                
            } else if(value == 5){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return const SettingsPage();
              }),);
            }
          }
        ),

  ],
      ),
      body: const HomePage(),
    );
  }
}
