import 'package:flutter/material.dart';
import 'package:resep_mobile/screens/editProfil_screen.dart';
import 'package:resep_mobile/screens/settingProfil_screen.dart';
import 'package:resep_mobile/screens/supportProfil_screen.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Profile"),
      ),
      body: Column(
        children: [
          // Profile Information
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/profile_image.png'), // Ganti dengan gambar profil
          ),
          const Text("Bo Toga Virga Sucimulia", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          const Text("bo.toga@gmail.com", style: TextStyle(fontSize: 14)),
          const SizedBox(height: 20),
          // Button Navigate
          ListTile(
            title: const Text('Edit Profile'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EditProfilePage()),
              );
            },
          ),
          ListTile(
            title: const Text('Settings'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Support'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SupportPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Log Out'),
            onTap: () {
              // Implement Log Out logic
            },
          ),
        ],
      ),
    );
  }
}
