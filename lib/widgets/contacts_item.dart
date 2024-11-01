import 'package:flutter/material.dart';
import 'package:flutter_home_work6/widgets/contacts_image_container.dart';
import 'package:flutter_home_work6/models/user_data.dart';
import 'package:flutter_home_work6/styles/text_styles.dart';

class ContactsItem extends StatelessWidget {
  const ContactsItem({super.key});

  @override
  Widget build(BuildContext context) {
    final userContact = UserData(
      userName: 'Spartak',
      userNumber: '(044)322-223-322',
    );

    return Container(
      color: Colors.black,
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ImageAssetsContainer(),
          const SizedBox(width: 5),
          TextStyles.styledText(
            'Name: ${userContact.userName}',
            TextStyles.userText,
          ),
          const SizedBox(width: 5),
          TextStyles.styledText(
            'Phone: ${userContact.userNumber}',
            TextStyles.userText,
          ),
        ],
      ),
    );
  }
}
