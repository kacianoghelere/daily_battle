enum Dice {
  d4,
  d6,
  d8,
  d10,
  d12,
  d20;

  static int getSides(Dice dice) {
    return switch (dice) {
      Dice.d4 => 4,
      Dice.d6 => 6,
      Dice.d8 => 8,
      Dice.d10 => 10,
      Dice.d12 => 12,
      Dice.d20 => 20
    };
  }

  static Dice parse(String dice) {
    return switch (dice) {
      'd4' => Dice.d4,
      'd6' => Dice.d6,
      'd8' => Dice.d8,
      'd10' => Dice.d10,
      'd12' => Dice.d12,
      'd20' => Dice.d20,
      _ => throw ArgumentError('Invalid Dice value')
    };
  }
}