import 'package:flutter/material.dart';
import 'dart:math';

//randomizer is declared here, so we wont create a Random class object everytime we call the function
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int currDice = 6;
  void rollDice() {
    setState(() => currDice = randomizer.nextInt(6) + 1);
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice-$currDice.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
          ),
          child: const Text(
            'Roll Dice',
            style: TextStyle(fontSize: 36, color: Colors.amberAccent),
          ),
        )
      ],
    );
  }
}
