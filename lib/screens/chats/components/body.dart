import 'package:flutter/material.dart';
import 'package:flutter_app_chat_ui/components/filled_outline_button.dart';
import 'package:flutter_app_chat_ui/constants.dart';
import 'package:flutter_app_chat_ui/models/Chat.dart';
import 'package:flutter_app_chat_ui/screens/chats/components/chat_card.dart';
import 'package:flutter_app_chat_ui/screens/messages/message_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: "Recent Message"),
              SizedBox(width: kDefaultPadding),
              FillOutlineButton(press: () {}, text: "Active", isFilled: false)
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: chatsData.length,
              itemBuilder: (context, index) => ChatCard(
                  chat: chatsData[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MessagesScreen())))),
        ),
      ],
    );
  }
}
