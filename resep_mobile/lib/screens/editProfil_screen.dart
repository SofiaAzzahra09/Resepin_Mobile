import 'package:flutter/material.dart';
import 'package:resep_mobile/const.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,  // Menggunakan warna background dari const.dart
        title: const Text("Edit Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Name'),
            TextField(),
            const SizedBox(height: 20),
            const Text('Email'),
            TextField(),
            const SizedBox(height: 20),
            const Text('Phone Number'),
            TextField(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Simpan perubahan
              },
              child: const Text('Save Profile'),
              style: ElevatedButton.styleFrom(backgroundColor: kButtonColor),  // Menggunakan kButtonColork
            ),
          ],
        ),
      ),
    );
  }
}
