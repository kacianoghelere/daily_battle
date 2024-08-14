import 'package:daily_battle/core/models/occupation.dart';
import 'package:daily_battle/core/models/attributes.dart';
import 'package:daily_battle/core/models/equipment.dart';
import 'package:daily_battle/core/models/species.dart';

abstract class Character {
  final String name;
  final String title;
  final String description;
  final int totalHealth;
  final int currentHealth;
  final Attributes attributes;
  final Species species;
  final Occupation occupation;
  final Equipment equipment;

  Character({
    required this.name,
    required this.title,
    required this.description,
    required this.totalHealth,
    required this.currentHealth,
    required this.attributes,
    required this.species,
    required this.occupation,
    required this.equipment,
  });

  Attributes getAttributes() {
    return attributes
      .addModifiers(species.attributeModifiers)
      .addModifiers(occupation.attributeModifiers);
  }
}