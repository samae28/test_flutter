import 'dart:math';
import 'dice_roller.dart';

class DiceRollerLogic {
  Random random = Random();
  var currentDiceRoll = 2;

  void rollDice() {
    currentDiceRoll = random.nextInt(6)+1;
  }
}