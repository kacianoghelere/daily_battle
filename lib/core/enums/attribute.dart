enum Attribute {
  strength,
  agility,
  intellect,
  charisma;

  static Attribute parse(String attribute) {
    return switch (attribute) {
      'strength' => Attribute.strength,
      'agility' => Attribute.agility,
      'intellect' => Attribute.intellect,
      'charisma' => Attribute.charisma,
      _ => throw ArgumentError('Invalid attribute name')
    };
  }
}

extension AttributeExtension on Attribute {
  String get name {
    return switch (this) {
      Attribute.strength => 'strength',
      Attribute.agility => 'agility',
      Attribute.intellect => 'intellect',
      Attribute.charisma => 'charisma',
    };
  }
}