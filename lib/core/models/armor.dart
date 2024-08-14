import 'package:daily_battle/core/enums/damage_type.dart';
import 'package:daily_battle/core/enums/item_type.dart';
import 'package:daily_battle/core/models/armor_category.dart';
import 'package:daily_battle/core/models/item.dart';

class Armor extends Item {
  final ArmorCategory category;
  final Map<DamageType, int> damageModifiers;
  final int defense;

  const Armor({
    required super.name,
    required super.originalName,
    super.type = ItemType.armor,
    required this.category,
    required this.damageModifiers,
    required this.defense
  });

  const Armor.emptyModifiers({
    required super.name,
    required super.originalName,
    super.type = ItemType.armor,
    this.damageModifiers = const {
      DamageType.bludgeoning: 0,
      DamageType.piercing: 0,
      DamageType.slashing: 0,
      DamageType.spell: 0,
    },
    required this.category,
    required this.defense
  });
}