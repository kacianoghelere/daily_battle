import 'package:daily_battle/core/models/trait.dart';

class Species extends Trait {
  Species({
    required super.name,
    required super.originalName,
    required super.attributeModifiers,
    required super.attackModifiers,
    required super.damageModifiers
  });
}