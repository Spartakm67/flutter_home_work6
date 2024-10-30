import 'package:flutter/material.dart';
import 'package:flutter_home_work6/widgets/image_assets_container.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageAssetsContainer(),
                      const SizedBox(height: 10),
                      const Text('My photo!'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Profile photo!'),
                      Text('Profile photo!'),
                      Text('Profile photo!'),
                    ],
                  ),
                ],
              ),
            // ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contacts');
              },
              child: const Text('Go to the Contacts'),
            ),
          ],
        ),
      ),
    );
  }
}
