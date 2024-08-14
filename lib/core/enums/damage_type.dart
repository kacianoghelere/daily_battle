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
      _ => throw ArgumentError('Invalid DamageType value')
    };
  }
}