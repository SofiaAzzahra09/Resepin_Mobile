import 'package:flutter/material.dart';
import 'package:resep_mobile/const.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,  
        title: const Text("Support"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('How can we help you?'),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'Write your issue here',
                border: OutlineInputBorder(),
              ),
              maxLines: 5,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Send message to support
              },
              child: const Text('Submit'),
              style: ElevatedButton.styleFrom(backgroundColor: kButtonColor),  
            ),
          ],
        ),
      ),
    );
  }
}
