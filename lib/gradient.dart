import 'package:flutter/material.dart';

import 'package:project_test/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class TestAbdullah extends StatelessWidget {
  const TestAbdullah(this.color1, this.color2, {super.key});

  const TestAbdullah.pink({super.key})
      : color1 = Colors.purple,
        color2 = Colors.black;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
