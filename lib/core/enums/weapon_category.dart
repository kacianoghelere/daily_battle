enum WeaponCategory {
  simple,
  martial;

  static WeaponCategory parse(String category) {
    return switch (category) {
      'simple' => WeaponCategory.simple,
      'martial' => WeaponCategory.martial,
      _ => throw ArgumentError('Invalid WeaponCategory value')
    };
  }
}