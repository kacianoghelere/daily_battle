enum ArmorCategory {
  light,
  medium,
  heavy,
  shield;

  static ArmorCategory parse(String category) {
    return switch (category) {
      'light' => ArmorCategory.light,
      'medium' => ArmorCategory.medium,
      'heavy' => ArmorCategory.heavy,
      'shield' => ArmorCategory.shield,
      _ => throw ArgumentError('Invalid ArmorCategory value')
    };
  }
}