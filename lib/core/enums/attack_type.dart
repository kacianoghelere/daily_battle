enum AttackType {
  melee,
  ranged,
  spell;

  static AttackType parse(String damageType) {
    return switch (damageType) {
      'melee' => AttackType.melee,
      'ranged' => AttackType.ranged,
      'spell' => AttackType.spell,
      _ => throw ArgumentError('Invalid AttackType value')
    };
  }
}

extension AttackTypeExtension on AttackType {
  String get name {
    return switch (this) {
      AttackType.melee => 'melee',
      AttackType.ranged => 'ranged',
      AttackType.spell => 'spell',
    };
  }
}