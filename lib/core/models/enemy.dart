import 'package:daily_battle/core/models/character.dart';

class Enemy extends Character {
  Enemy({
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