import 'package:flutter/material.dart';
import 'dart:math';

final randomvariale = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDice = 4;

  void rollDice() {
    setState(() {
      currentDice = randomvariale.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDice.png',
          width: 250,
        ),
        const SizedBox(height: 100),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.yellowAccent,
            backgroundColor: Colors.purple,
            textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontStyle: FontStyle.normal,
            ),
          ),
          child: const Text(
            'اضغط هنا',
          ),
        ),
      ],
    );
  }
}
