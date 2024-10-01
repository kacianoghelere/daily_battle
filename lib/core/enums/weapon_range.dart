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

extension WeaponRangeExtension on WeaponRange {
  String get name {
    return switch (this) {
      WeaponRange.melee => 'melee',
      WeaponRange.ranged => 'ranged'
    };
  }
}
