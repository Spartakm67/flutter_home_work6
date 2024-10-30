import 'package:flutter/material.dart';
import 'package:flutter_home_work6/widgets/contacts_image_container.dart';
import 'package:flutter_home_work6/constants/user_data.dart';
import 'package:flutter_home_work6/styles/text_styles.dart';

class ContactsItem extends StatelessWidget {
  const ContactsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ImageAssetsContainer(),
          const SizedBox(width: 10),
          TextStyles.styledText(
              'Name: ${UserData.userName}', TextStyles.userText),
          const SizedBox(width: 10),
          TextStyles.styledText(
              'Phone: ${UserData.userNumber}', TextStyles.userText),
        ],
      ),
    );
  }
}