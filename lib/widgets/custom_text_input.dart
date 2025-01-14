import "package:flutter/material.dart";

import "package:chat_app/config.dart" as config;

class CustomTextInput extends StatelessWidget {
  final String hintText;
  final IconData leading;
  final ValueChanged<String> userTyped;
  final bool obscure;
  final TextInputType keyboard;

  const CustomTextInput(
      {super.key,
      required this.hintText,
      required this.leading,
      required this.userTyped,
      required this.obscure,
      this.keyboard = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.only(left: 10),
      width: (MediaQuery.of(context).size.width * 0.7),
      child: TextField(
        onChanged: userTyped,
        keyboardType: keyboard,
        onSubmitted: (_) {},
        autofocus: false,
        obscureText: obscure,
        decoration: InputDecoration(
          icon: Icon(
            leading,
            color: Colors.deepPurple,
          ),
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(
            fontFamily: config.fontFamily,
          ),
        ),
      ),
    );
  }
}
