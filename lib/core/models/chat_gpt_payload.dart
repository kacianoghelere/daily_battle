import 'dart:convert';
import 'package:daily_battle/core/enums/chat_gpt.dart';
import 'package:daily_battle/core/models/chat_gpt_message.dart';

class ChatGptPayload {
  final ChatGptModel model;
  final List<ChatGptMessage> messages;

  ChatGptPayload({required this.model, required this.messages});

  String toJson() {
    return jsonEncode({
      model: model.code,
      messages: messages
    });
  }
}