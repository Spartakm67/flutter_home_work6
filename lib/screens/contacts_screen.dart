import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Contacts',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome!',
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: const Text(
                'Go to the profile',
              ),
            ),
          ],
        ),
      ),
    );
  }
}