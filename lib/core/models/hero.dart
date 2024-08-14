import 'package:daily_battle/core/models/character.dart';

class Hero extends Character {
  Hero({
    required super.name,
    required super.title,
    required super.description,
    required super.totalHealth,
    required super.currentHealth,
    required super.attributes,
    required super.species,
    required super.occupation,
    required super.equipment
  });
}