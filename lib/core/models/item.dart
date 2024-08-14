import 'package:daily_battle/core/interfaces/translatable.dart';
import 'package:daily_battle/core/enums/item_type.dart';

abstract class Item extends Translatable {
  final ItemType type;

  const Item({
    required super.name,
    required super.originalName,
    required this.type,
  });
}