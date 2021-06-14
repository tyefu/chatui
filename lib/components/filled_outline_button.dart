import 'package:flutter/material.dart';
import 'package:flutter_app_chat_ui/constants.dart';

class FillOutlineButton extends StatelessWidget {
  const FillOutlineButton({
    Key? key,
    this.isFilled = true,
    required this.press,
    required this.text,
  }) : super(key: key);

  final bool isFilled;
  final VoidCallback press;
  final String text;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: press,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(color: Colors.white)),
      elevation: isFilled ? 2 : 0,
      color: isFilled ? Colors.white : Colors.transparent,
      child: Text(
        text,
        style: TextStyle(
            color: isFilled ? kContentColorLightTheme : Colors.white,
            fontSize: 12),
      ),
    );
  }
}
