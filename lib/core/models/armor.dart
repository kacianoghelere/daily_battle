import 'package:daily_battle/core/enums/damage_type.dart';
import 'package:daily_battle/core/enums/item_type.dart';
import 'package:daily_battle/core/enums/armor_category.dart';
import 'package:daily_battle/core/models/item.dart';

const Map<DamageType, int> emptyDamageModifiers = {
  DamageType.bludgeoning: 0,
  DamageType.piercing: 0,
  DamageType.slashing: 0,
  DamageType.spell: 0,
};

class Armor extends Item {
  final ArmorCategory category;
  final Map<DamageType, int> damageModifiers;
  final int defense;

  Armor._internal({
    required super.name,
    required super.originalName,
    super.type = ItemType.armor,
    required this.category,
    this.damageModifiers = emptyDamageModifiers,
    required this.defense
  }): assert(type == ItemType.armor);

  factory Armor.light({
    required String name,
    required String originalName,
    required int defense,
    Map<DamageType, int>? damageModifiers,
  }) {
    return Armor._internal(
      name: name,
      category: ArmorCategory.light,
      defense: defense,
      originalName: originalName,
      damageModifiers: damageModifiers ?? emptyDamageModifiers
    );
  }

  factory Armor.medium({
    required String name,
    required String originalName,
    required int defense,
    Map<DamageType, int>? damageModifiers,
  }) {
    return Armor._internal(
      name: name,
      category: ArmorCategory.medium,
      defense: defense,
      originalName: originalName,
      damageModifiers: damageModifiers ?? emptyDamageModifiers
    );
  }

  factory Armor.heavy({
    required String name,
    required String originalName,
    required int defense,
    Map<DamageType, int>? damageModifiers,
  }) {
    return Armor._internal(
      name: name,
      category: ArmorCategory.heavy,
      defense: defense,
      originalName: originalName,
      damageModifiers: damageModifiers ?? emptyDamageModifiers
    );
  }

  factory Armor.shield({
    required String name,
    required String originalName,
    required int defense,
    Map<DamageType, int>? damageModifiers,
  }) {
    return Armor._internal(
      name: name,
      category: ArmorCategory.shield,
      defense: defense,
      originalName: originalName,
      damageModifiers: damageModifiers ?? emptyDamageModifiers
    );
  }
}