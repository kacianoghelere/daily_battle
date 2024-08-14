import 'package:daily_battle/core/models/armor.dart';

class ArmorTypes {
  // Armaduras Leves
  static final leather = Armor.light(name: 'Couro', originalName: 'Leather', defense: 2);
  static final padded = Armor.light(name: 'Almofadada', originalName: 'Padded', defense: 1);
  static final studdedLeather = Armor.light(name: 'Couro Batido', originalName: 'Studded Leather', defense: 3);

  // Armaduras Médias
  static final breastplate = Armor.medium(name: 'Peitoral', originalName: 'Breastplate', defense: 5);
  static final chainShirt = Armor.medium(name: 'Camisa de Malha', originalName: 'Chain Shirt', defense: 4);
  static final halfPlate = Armor.medium(name: 'Meia Armadura', originalName: 'Half Plate', defense: 5);
  static final hide = Armor.medium(name: 'Couro Endurecido', originalName: 'Hide', defense: 2);
  static final scaleMail = Armor.medium(name: 'Cota de Escamas', originalName: 'Scale Mail', defense: 4);

  // Armaduras Pesadas
  static final chainMail = Armor.heavy(name: 'Cota de Malha', originalName: 'Chain Mail', defense: 6);
  static final plate = Armor.heavy(name: 'Armadura Completa', originalName: 'Plate', defense: 8);
  static final ringMail = Armor.heavy(name: 'Cota de Anéis', originalName: 'Ring Mail', defense: 4);
  static final splint = Armor.heavy(name: 'Cota de Talas', originalName: 'Splint', defense: 6);

  // Escudos
  static final shield = Armor.shield(name: 'Escudo', originalName: 'Shield', defense: 2);

  static List<Armor> toList() {
    return [
      padded,
      leather,
      studdedLeather,
      hide,
      chainShirt,
      scaleMail,
      breastplate,
      halfPlate,
      ringMail,
      chainMail,
      splint,
      plate,
      shield,
    ];
  }

  static List<String> getNames() {
    return toList().map((armor) => armor.name).toList();
  }

  static String concat() {
    return getNames().join(',');
  }
}
