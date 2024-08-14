import 'package:daily_battle/core/enums/damage_type.dart';
import 'package:daily_battle/core/enums/dice.dart';
import 'package:daily_battle/core/enums/weapon_category.dart';
import 'package:daily_battle/core/enums/weapon_range.dart';
import 'package:daily_battle/core/models/weapon.dart';

class WeaponTypes {
  // Armas Simples Corpo a Corpo
  static const club = Weapon(
    name: 'Clava',
    originalName: 'Club',
    category: WeaponCategory.simple,
    range: WeaponRange.melee,
    damage: {
      Dice.d4: (quantity: 1, damageType: DamageType.bludgeoning),
    },
  );
  static const dagger = Weapon(
    name: 'Adaga',
    originalName: 'Dagger',
    category: WeaponCategory.simple,
    range: WeaponRange.melee,
    damage: {
      Dice.d4: (quantity: 1, damageType: DamageType.piercing),
    },
  );
  static const handaxe = Weapon(
    name: 'Machadinha',
    originalName: 'Handaxe',
    category: WeaponCategory.simple,
    range: WeaponRange.melee,
    damage: {
      Dice.d6: (quantity: 1, damageType: DamageType.slashing),
    },
  );
  static const javelin = Weapon(
    name: 'Azagaia',
    originalName: 'Javelin',
    category: WeaponCategory.simple,
    range: WeaponRange.melee,
    damage: {
      Dice.d6: (quantity: 1, damageType: DamageType.piercing),
    },
  );
  static const hammer = Weapon(
    name: 'Martelo',
    originalName: 'Hammer',
    category: WeaponCategory.simple,
    range: WeaponRange.melee,
    damage: {
      Dice.d4: (quantity: 1, damageType: DamageType.bludgeoning),
    },
  );
  static const mace = Weapon(
    name: 'Maça',
    originalName: 'Mace',
    category: WeaponCategory.simple,
    range: WeaponRange.melee,
    damage: {
      Dice.d6: (quantity: 1, damageType: DamageType.bludgeoning),
    },
  );
  static const quarterstaff = Weapon(
    name: 'Bastão',
    originalName: 'Quarterstaff',
    category: WeaponCategory.simple,
    range: WeaponRange.melee,
    damage: {
      Dice.d6: (quantity: 1, damageType: DamageType.bludgeoning),
    },
  );
  static const scimitar = Weapon(
    name: 'Cimitarra',
    originalName: 'Scimitar',
    category: WeaponCategory.simple,
    range: WeaponRange.melee,
    damage: {
      Dice.d6: (quantity: 1, damageType: DamageType.slashing),
    },
  );
  static const sickle = Weapon(
    name: 'Foice',
    originalName: 'Sickle',
    category: WeaponCategory.simple,
    range: WeaponRange.melee,
    damage: {
      Dice.d4: (quantity: 1, damageType: DamageType.slashing),
    },
  );
  static const spear = Weapon(
    name: 'Lança',
    originalName: 'Spear',
    category: WeaponCategory.simple,
    range: WeaponRange.melee,
    damage: {
      Dice.d6: (quantity: 1, damageType: DamageType.piercing),
    },
  );

  // Armas Simples à Distância
  static const dart = Weapon(
    name: 'Dardo',
    originalName: 'Dart',
    category: WeaponCategory.simple,
    range: WeaponRange.ranged,
    damage: {
      Dice.d4: (quantity: 1, damageType: DamageType.piercing),
    },
  );
  static const handCrossbow = Weapon(
    name: 'Besta de Mão',
    originalName: 'Hand Crossbow',
    category: WeaponCategory.simple,
    range: WeaponRange.ranged,
    damage: {
      Dice.d6: (quantity: 1, damageType: DamageType.piercing),
    },
  );
  static const shortbow = Weapon(
    name: 'Arco Curto',
    originalName: 'Shortbow',
    category: WeaponCategory.simple,
    range: WeaponRange.ranged,
    damage: {
      Dice.d6: (quantity: 1, damageType: DamageType.piercing),
    },
  );
  static const sling = Weapon(
    name: 'Funda',
    originalName: 'Sling',
    category: WeaponCategory.simple,
    range: WeaponRange.ranged,
    damage: {
      Dice.d4: (quantity: 1, damageType: DamageType.bludgeoning),
    },
  );

  // Armas Marciais Corpo a Corpo
  static const battleaxe = Weapon(
    name: 'Machado de Batalha',
    originalName: 'Battleaxe',
    category: WeaponCategory.martial,
    range: WeaponRange.melee,
    damage: {
      Dice.d8: (quantity: 1, damageType: DamageType.slashing),
    },
  );
  static const flail = Weapon(
    name: 'Mangual',
    originalName: 'Flail',
    category: WeaponCategory.martial,
    range: WeaponRange.melee,
    damage: {
      Dice.d8: (quantity: 1, damageType: DamageType.bludgeoning),
    },
  );
  static const glaive = Weapon(
    name: 'Glaive',
    originalName: 'Glaive',
    category: WeaponCategory.martial,
    range: WeaponRange.melee,
    damage: {
      Dice.d10: (quantity: 1, damageType: DamageType.slashing),
    },
  );
  static const greataxe = Weapon(
    name: 'Machado Grande',
    originalName: 'Greataxe',
    category: WeaponCategory.martial,
    range: WeaponRange.melee,
    damage: {
      Dice.d12: (quantity: 1, damageType: DamageType.slashing),
    },
  );
  static const greatsword = Weapon(
    name: 'Espada Grande',
    originalName: 'Greatsword',
    category: WeaponCategory.martial,
    range: WeaponRange.melee,
    damage: {
      Dice.d6: (quantity: 2, damageType: DamageType.slashing),
    },
  );
  static const halberd = Weapon(
    name: 'Alabarda',
    originalName: 'Halberd',
    category: WeaponCategory.martial,
    range: WeaponRange.melee,
    damage: {
      Dice.d10: (quantity: 1, damageType: DamageType.slashing),
    },
  );
  static const longsword = Weapon(
    name: 'Espada Longa',
    originalName: 'Longsword',
    category: WeaponCategory.martial,
    range: WeaponRange.melee,
    damage: {
      Dice.d8: (quantity: 1, damageType: DamageType.slashing),
    },
  );
  static const morningstar = Weapon(
    name: 'Maça Estrela',
    originalName: 'Morningstar',
    category: WeaponCategory.martial,
    range: WeaponRange.melee,
    damage: {
      Dice.d8: (quantity: 1, damageType: DamageType.bludgeoning),
    },
  );
  static const pike = Weapon(
    name: 'Lança Longa',
    originalName: 'Pike',
    category: WeaponCategory.martial,
    range: WeaponRange.melee,
    damage: {
      Dice.d10: (quantity: 1, damageType: DamageType.piercing),
    },
  );
  static const rapier = Weapon(
    name: 'Florete',
    originalName: 'Rapier',
    category: WeaponCategory.martial,
    range: WeaponRange.melee,
    damage: {
      Dice.d8: (quantity: 1, damageType: DamageType.piercing),
    },
  );
  static const shortsword = Weapon(
    name: 'Espada Curta',
    originalName: 'Shortsword',
    category: WeaponCategory.martial,
    range: WeaponRange.melee,
    damage: {
      Dice.d6: (quantity: 1, damageType: DamageType.slashing),
    },
  );
  static const trident = Weapon(
    name: 'Tridente',
    originalName: 'Trident',
    category: WeaponCategory.martial,
    range: WeaponRange.melee,
    damage: {
      Dice.d6: (quantity: 1, damageType: DamageType.piercing),
    },
  );
  static const warhammer = Weapon(
    name: 'Martelo de Guerra',
    originalName: 'Warhammer',
    category: WeaponCategory.martial,
    range: WeaponRange.melee,
    damage: {
      Dice.d8: (quantity: 1, damageType: DamageType.bludgeoning),
    },
  );

  // Armas Marciais à Distância
  static const heavyCrossbow = Weapon(
    name: 'Besta Pesada',
    originalName: 'Heavy Crossbow',
    category: WeaponCategory.martial,
    range: WeaponRange.ranged,
    damage: {
      Dice.d10: (quantity: 1, damageType: DamageType.piercing),
    },
  );
  static const longbow = Weapon(
    name: 'Arco Longo',
    originalName: 'Longbow',
    category: WeaponCategory.martial,
    range: WeaponRange.ranged,
    damage: {
      Dice.d8: (quantity: 1, damageType: DamageType.piercing),
    },
  );

  static List<Weapon> toList() {
    return [
      club,
      dagger,
      handaxe,
      javelin,
      hammer,
      mace,
      quarterstaff,
      scimitar,
      sickle,
      spear,
      dart,
      shortbow,
      sling,
      battleaxe,
      flail,
      glaive,
      greataxe,
      greatsword,
      halberd,
      longsword,
      morningstar,
      pike,
      rapier,
      shortsword,
      trident,
      warhammer,
      handCrossbow,
      heavyCrossbow,
      longbow,
    ];
  }

  static List<String> getNames() {
    return toList().map((weapon) => weapon.name).toList();
  }
  
  static String concat() {
    return getNames().join(',');
  }
}
