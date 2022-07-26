import 'package:flutter/material.dart';

class AppBoldText extends StatelessWidget {

  final String text;

  const AppBoldText(
      this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
