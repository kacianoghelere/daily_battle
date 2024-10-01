enum ItemType {
  armor,
  consumable,
  miscellaneous,
  weapon;

  static ItemType parse(String itemType) {
    return switch (itemType) {
      'armor' => ItemType.armor,
      'consumable' => ItemType.consumable,
      'miscellaneous' => ItemType.miscellaneous,
      'weapon' => ItemType.weapon,
      _ => throw ArgumentError('Invalid Item Type name')
    };
  }
}

extension ItemTypeExtension on ItemType {
  String get name {
    return switch (this) {
      ItemType.armor => 'armor',
      ItemType.consumable => 'consumable',
      ItemType.miscellaneous => 'miscellaneous',
      ItemType.weapon => 'weapon',
    };
  }
}