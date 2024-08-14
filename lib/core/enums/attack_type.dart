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