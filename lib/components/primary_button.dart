import 'package:flutter/material.dart';
import 'package:flutter_app_chat_ui/constants.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key,
      required this.text,
      required this.press,
      this.color = kPrimaryColor,
      this.padding = const EdgeInsets.all(kDefaultPadding * 0.75)})
      : super(key: key);

  final String text;
  final VoidCallback press;
  final color;
  final EdgeInsets padding;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40))),
      onPressed: press,
      padding: padding,
      color: color,
      minWidth: double.infinity,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
