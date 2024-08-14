enum WeaponRange {
  melee,
  ranged;

  static WeaponRange parse(String category) {
    return switch (category) {
      'melee' => WeaponRange.melee,
      'ranged' => WeaponRange.ranged,
      _ => throw ArgumentError('Invalid WeaponRange value')
    };
  }
}