import 'package:flutter/material.dart';
import 'package:flutter_home_work6/widgets/image_assets_container.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Profile Screen',
        ),
      ),
      body: Center(
        child: Column(children: [
          Row(children: [
            ImageAssetsContainer(),
            const Text(
              'Profile photo!',
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Profile photo!',
                ),
                const Text(
                  'Profile photo!',
                ),
                const Text(
                  'Profile photo!',
                ),
              ],
            ),
          ]),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/contacts');
            },
            child: const Text(
              'Go to the Contacts',
            ),
          ),
        ]),
      ),
    );
  }
}
