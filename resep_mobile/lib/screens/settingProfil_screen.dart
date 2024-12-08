import 'package:flutter/material.dart';
import 'package:resep_mobile/const.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,  
        title: const Text("Settings"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Account'),
            onTap: () {
              // Implement account settings
            },
          ),
          ListTile(
            title: const Text('Language'),
            onTap: () {
              // Implement language settings
            },
          ),
          ListTile(
            title: const Text('Theme'),
            onTap: () {
              // Implement theme settings
            },
          ),
        ],
      ),
    );
  }
}
