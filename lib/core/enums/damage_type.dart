enum DamageType {
  slashing,
  piercing,
  bludgeoning,
  spell;

  static DamageType parse(String damageType) {
    return switch (damageType) {
      'slashing' => DamageType.slashing,
      'bludgeoning' => DamageType.bludgeoning,
      'piercing' => DamageType.piercing,
      'spell' => DamageType.spell,
      _ => throw ArgumentError('Invalid DamageType value')
    };
  }
}

extension DamageTypeExtension on DamageType {
  String get name {
    return switch (this) {
      DamageType.slashing => 'slashing',
      DamageType.bludgeoning => 'bludgeoning',
      DamageType.piercing => 'piercing',
      DamageType.spell => 'spell',
    };
  }
}