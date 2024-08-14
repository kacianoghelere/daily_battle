import 'package:daily_battle/core/constants/weapons.dart';
import 'package:daily_battle/core/enums/damage_type.dart';
import 'package:daily_battle/core/enums/dice.dart';
import 'package:daily_battle/core/enums/item_type.dart';
import 'package:daily_battle/core/helpers/dice_roller.dart';
import 'package:daily_battle/core/interfaces/rollable.dart';
import 'package:daily_battle/core/models/item.dart';
import 'package:daily_battle/core/models/weapon_category.dart';
import 'package:daily_battle/core/models/weapon_range.dart';

typedef WeaponDamage = Map<Dice, ({int quantity, DamageType damageType})>;

class Weapon extends Item implements Rollable {
  final WeaponCategory category;
  final WeaponRange range;
  final WeaponDamage damage;

  const Weapon({
    required super.name,
    required super.originalName,
    super.type = ItemType.weapon,
    required this.category,
    required this.range,
    required this.damage,
  });

  factory Weapon.fromJson(Map<String, dynamic> json) {
    return Weapon(
      name: json['name'] as String,
      originalName: json['originalName'] as String,
      category: _parseWeaponCategory(json['category'] as String),
      range: _parseWeaponRange(json['range'] as String),
      damage: _parseWeaponDamage(json['damage'] as Map<String, dynamic>),
    );
  }

  static WeaponCategory _parseWeaponCategory(String category) {
    return switch (category) {
      'simple' => WeaponCategoryTypes.simple,
      'martial' => WeaponCategoryTypes.martial,
      _ => throw ArgumentError('Invalid WeaponCategory value')
    };
  }

  static WeaponRange _parseWeaponRange(String range) {
    return switch (range) {
      'melee' => WeaponRangeTypes.melee,
      'ranged' => WeaponRangeTypes.ranged,
      _ => throw ArgumentError('Invalid WeaponRange value')
    };
  }

  static WeaponDamage _parseWeaponDamage(Map<String, dynamic> damageJson) {
    final damage = <Dice, ({int quantity, DamageType damageType})>{};

    damageJson.forEach((key, value) {
      final dice = Dice.parse(key);
      final quantity = value['quantity'] as int;
      final damageType = DamageType.parse(value['damageType'] as String);

      damage[dice] = (quantity: quantity, damageType: damageType);
    });

    return damage;
  }

  @override
   DiceRollerResult roll() {
    if (damage == null) {
      throw const FormatException('Invalid dice type');
    }

    return DiceRoller.roll(diceConfiguration: damage);
  }
}