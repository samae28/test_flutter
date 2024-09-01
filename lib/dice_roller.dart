import 'dart:math';
import 'package:flutter/material.dart';
import 'dice_roller_logic.dart';

// final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller ({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{

  final DiceRollerLogic _logic = DiceRollerLogic();
  // var activeDiceImage = 'assets/images/dice-2.png';
  // var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      // currentDiceRoll = randomizer.nextInt(6) + 1;
      _logic.rollDice();
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-${_logic.currentDiceRoll}.png',
          width: 300,
        ),
        const SizedBox(height: 40,),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
}
}