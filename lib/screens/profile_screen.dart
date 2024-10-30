import 'package:flutter/material.dart';
import 'package:flutter_home_work6/widgets/image_assets_container.dart';
import 'package:flutter_home_work6/constants/user_data.dart';
import 'package:flutter_home_work6/styles/text_styles.dart';

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    ImageAssetsContainer(),
                    const SizedBox(height: 10),
                    const Text('User photo', style: TextStyles.defaultText),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextStyles.styledText(
                        'Name: ${UserData.userName}', TextStyles.userText),
                    const SizedBox(height: 30),
                    TextStyles.styledText(
                        'Age: ${UserData.userAge}', TextStyles.userText),
                    const SizedBox(height: 30),
                    TextStyles.styledText(
                        'Work: ${UserData.userWork}', TextStyles.userText),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/contacts');
                },
                child: const Text('Go to the Contacts',
                    style: TextStyles.buttonText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
