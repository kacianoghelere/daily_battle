import 'package:daily_battle/core/models/armor.dart';
import 'package:daily_battle/core/models/item.dart';
import 'package:daily_battle/core/models/weapon.dart';

abstract class Equipment {
  final Armor armor;
  final List<Weapon> weapons;
  final List<Item> items;

  Equipment({
    required this.armor,
    required this.weapons,
    required this.items,
  });
}