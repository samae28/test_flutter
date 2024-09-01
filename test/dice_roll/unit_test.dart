import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'dart:math';
import 'package:test_flutter/dice_roller.dart';
import 'package:test_flutter/dice_roller_logic.dart';

// Mock class for Random
class MockRandom extends Mock implements Random {}

void main() {
  late DiceRollerLogic diceRollerLogic;
  late MockRandom mockRandom;

  setUp(() {
    mockRandom = MockRandom();
    diceRollerLogic = DiceRollerLogic();

    // Inject the mock Random instance into the DiceRollerLogic instance
    diceRollerLogic = DiceRollerLogic()..random = mockRandom;
  });

  test('should roll a dice and set currentDiceRoll', () {
    // Arrange
    when(() => mockRandom.nextInt(6)).thenReturn(3);  // Simulate a roll of 4 (3 + 1)

    // Act
    diceRollerLogic.rollDice();

    // Assert
    expect(diceRollerLogic.currentDiceRoll, 4);
    verify(() => mockRandom.nextInt(6)).called(1);  // Ensure nextInt(6) was called once
  });
}



// import 'package:flutter_test/flutter_test.dart';
// import 'package:test_flutter/dice_roller.dart';
// import 'package:test_flutter/dice_roller_logic.dart';
//
// void main(){
//   test('rollDice should generate a number between 1 and 6',  () {
//     final logic = DiceRollerLogic();
//
//     //simulate rolling the dice multiple times
//     for (int i = 0; i < 100; i++) {
//       logic.rollDice();
//
//       // Verify that the dice roll is within the expected range
//       expect(logic.currentDiceRoll, inInclusiveRange(1, 6));
//     }
//   });
// }