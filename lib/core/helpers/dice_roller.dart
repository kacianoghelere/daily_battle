import 'dart:math';
import 'package:daily_battle/core/enums/damage_type.dart';
import 'package:daily_battle/core/enums/dice.dart';

typedef DiceRolls = Map<Dice, ({
  List<int> rolledValues,
  int total,
  DamageType? damageType
})>;

typedef DiceRollerResult = ({DiceRolls diceRolls, int total});

typedef DiceConfiguration = Map<Dice, ({
  int quantity,
  DamageType? damageType
})>;

class DiceRoller {
  static final Random _random = Random();

  static int _rollDice(Dice dice) {
    final sides = Dice.getSides(dice);

    if (sides < 1) {
      throw ArgumentError('O número de faces deve ser pelo menos 1.');
    }

    return _random.nextInt(sides) + 1;
  }

  static DiceRollerResult roll({required DiceConfiguration diceConfiguration}) {
    final DiceRolls diceRolls = {};

    diceConfiguration.forEach((dice, config) {
      final (:quantity, :damageType) = config;

      final List<int> rolledValues = [];

      for (int i = 0; i < quantity; i++) {
        rolledValues.add(_rollDice(dice));
      }

      final totalForDice = rolledValues.fold(0, (sum, value) => sum + value);

      diceRolls[dice] = (
        damageType: damageType,
        rolledValues: rolledValues,
        total: totalForDice
      );
    });

    final total = diceRolls.values
      .expand((r) => r.rolledValues)
      .fold(0, (sum, value) => sum + value);

    return (diceRolls: diceRolls, total: total);
  }

  static DiceRollerResult rollSingleDice({
    required Dice dice,
    int quantity = 1,
    DamageType? damageType
  }) {
    return roll(diceConfiguration: {
      (dice): (quantity: quantity, damageType: damageType)
    });
  }
}