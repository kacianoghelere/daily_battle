import 'package:daily_battle/core/enums/attack_type.dart';
import 'package:daily_battle/core/enums/damage_type.dart';
import 'package:daily_battle/core/interfaces/translatable.dart';
import 'package:daily_battle/core/enums/attribute.dart';
import 'package:daily_battle/core/types/general.dart';

class Trait extends Translatable {
  final Modifiers<Attribute> attributeModifiers;
  final Modifiers<AttackType> attackModifiers;
  final Modifiers<DamageType> damageModifiers;

  Trait({
    required super.name,
    required super.originalName,
    required this.attributeModifiers,
    required this.attackModifiers,
    required this.damageModifiers
  });
}