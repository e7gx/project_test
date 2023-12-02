import 'package:flutter/material.dart';

class Test2 extends StatelessWidget {
  const Test2(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 55,
        fontStyle: FontStyle.italic,
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontFamily: AutofillHints.jobTitle,
      ),
    );
  }
}
