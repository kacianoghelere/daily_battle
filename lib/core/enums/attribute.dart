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