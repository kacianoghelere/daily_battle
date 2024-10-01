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

extension ArmorCategoryExtension on ArmorCategory {
  String get name {
    return switch (this) {
      ArmorCategory.light => 'light',
      ArmorCategory.medium => 'medium',
      ArmorCategory.heavy => 'heavy',
      ArmorCategory.shield => 'shield',
    };
  }
}