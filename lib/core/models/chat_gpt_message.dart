import 'package:daily_battle/core/enums/chat_gpt.dart';

class ChatGptMessage {
  final ChatGptMessageRole role;
  final String content;

  ChatGptMessage({required this.role, required this.content});
}
