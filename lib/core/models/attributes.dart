import 'package:daily_battle/core/enums/attribute.dart';

class Attributes {
  final Map<Attribute, int> attributes;

  Attributes({required this.attributes});

  Attributes.empty(): attributes = {
    Attribute.strength: 0,
    Attribute.agility: 0,
    Attribute.intellect: 0,
    Attribute.charisma: 0,
  };

  Attributes.clone(Attributes baseAttributes): attributes = Map.from(baseAttributes.attributes);

  Attributes addModifiers(Map<Attribute, int> modifiers) {
    var newAttributes = Map.from(attributes) as Map<Attribute, int>;

    modifiers.forEach((key, value) {
      if (newAttributes[key] != null) {
        newAttributes[key] = newAttributes[key]! + value;
      }
    });

    return Attributes(attributes: newAttributes);
  }

  int getAttribute(Attribute attribute) {
    return attributes[attribute] ?? 0;
  }

  void setAttribute(Attribute attribute, int value) {
    attributes[attribute] = value;
  }

  @override
  String toString() {
    return 'Attributes(${attributes.entries.map((e) => '${e.key}: ${e.value}').join(', ')})';
  }
}