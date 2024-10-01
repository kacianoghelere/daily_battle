import 'package:daily_battle/core/enums/chat_gpt_role.dart';
import 'package:daily_battle/core/interfaces/json_model.dart';

class ChatGptMessage implements JsonModel {
  final ChatGptMessageRole role;
  final String content;

  const ChatGptMessage({required this.role, required this.content});

  @override
  Map<String, dynamic> toJson() => {
    'role': role.toString().split('.')[1],
    'content': content
  };
}