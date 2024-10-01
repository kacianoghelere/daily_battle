import 'package:daily_battle/core/enums/damage_type.dart';
import 'package:daily_battle/core/enums/dice.dart';
import 'package:daily_battle/core/enums/item_type.dart';
import 'package:daily_battle/core/enums/weapon_category.dart';
import 'package:daily_battle/core/enums/weapon_range.dart';
import 'package:daily_battle/core/helpers/dice_roller.dart';
import 'package:daily_battle/core/interfaces/rollable.dart';
import 'package:daily_battle/core/models/item.dart';

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
      category: WeaponCategory.parse(json['category'] as String),
      range: WeaponRange.parse(json['range'] as String),
      damage: _parseWeaponDamage(json['damage'] as Map<String, dynamic>),
    );
  }

  static WeaponDamage _parseWeaponDamage(Map<String, dynamic> data) {
    final damage = <Dice, ({int quantity, DamageType damageType})>{};

    data.forEach((key, value) {
      final dice = Dice.parse(key);
      final quantity = value['quantity'] as int;
      final damageType = DamageType.parse(value['damageType'] as String);

      damage[dice] = (quantity: quantity, damageType: damageType);
    });

    return damage;
  }

  @override
   DiceRollerResult roll() {
    return DiceRoller.roll(diceConfiguration: damage);
  }
}