import 'package:daily_battle/core/enums/damage_type.dart';
import 'package:daily_battle/core/models/armor.dart';
import 'package:daily_battle/core/models/armor_category.dart';

class ArmorCategoryTypes {
  static const light = ArmorCategory(name: 'Leve', originalName: 'Light');
  static const medium = ArmorCategory(name: 'Média', originalName: 'Medium');
  static const heavy = ArmorCategory(name: 'Pesada', originalName: 'Heavy');
  static const shield = ArmorCategory(name: 'Escudo', originalName: 'Shield');
}

class ArmorTypes {
  // Armaduras Leves
  static const padded = Armor.emptyModifiers(
    name: 'Almofadada',
    originalName: 'Padded',
    category: ArmorCategoryTypes.light,
    defense: 1,
  );
  static const leather = Armor.emptyModifiers(
    name: 'Couro',
    originalName: 'Leather',
    category: ArmorCategoryTypes.light,
    defense: 2,
  );
  static const studdedLeather = Armor.emptyModifiers(
    name: 'Couro Batido',
    originalName: 'Studded Leather',
    category: ArmorCategoryTypes.light,
    defense: 3,
  );

  // Armaduras Médias
  static const hide = Armor.emptyModifiers(
    name: 'Couro Endurecido',
    originalName: 'Hide',
    category: ArmorCategoryTypes.medium,
    defense: 2,
  );
  static const chainShirt = Armor.emptyModifiers(
    name: 'Camisa de Malha',
    originalName: 'Chain Shirt',
    category: ArmorCategoryTypes.medium,
    defense: 4,
  );
  static const scaleMail = Armor.emptyModifiers(
    name: 'Cota de Escamas',
    originalName: 'Scale Mail',
    category: ArmorCategoryTypes.medium,
    defense: 4,
  );
  static const breastplate = Armor.emptyModifiers(
    name: 'Peitoral',
    originalName: 'Breastplate',
    category: ArmorCategoryTypes.medium,
    defense: 5,
  );
  static const halfPlate = Armor.emptyModifiers(
    name: 'Meia Armadura',
    originalName: 'Half Plate',
    category: ArmorCategoryTypes.medium,
    defense: 5,
  );

  // Armaduras Pesadas
  static const ringMail = Armor.emptyModifiers(
    name: 'Cota de Anéis',
    originalName: 'Ring Mail',
    category: ArmorCategoryTypes.heavy,
    defense: 4,
  );
  static const chainMail = Armor.emptyModifiers(
    name: 'Cota de Malha',
    originalName: 'Chain Mail',
    category: ArmorCategoryTypes.heavy,
    defense: 6,
  );
  static const splint = Armor.emptyModifiers(
    name: 'Cota de Talas',
    originalName: 'Splint',
    category: ArmorCategoryTypes.heavy,
    defense: 6,
  );
  static const plate = Armor.emptyModifiers(
    name: 'Armadura Completa',
    originalName: 'Plate',
    category: ArmorCategoryTypes.heavy,
    defense: 8,
  );

  // Escudos
  static const shield = Armor.emptyModifiers(
    name: 'Escudo',
    originalName: 'Shield',
    category: ArmorCategoryTypes.shield,
    defense: 2,
  );

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
