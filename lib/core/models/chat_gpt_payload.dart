import 'package:daily_battle/core/enums/chat_gpt_model.dart';
import 'package:daily_battle/core/interfaces/json_model.dart';
import 'package:daily_battle/core/models/chat_gpt_message.dart';

class ChatGptPayload implements JsonModel {
  final ChatGptModel model;
  final List<ChatGptMessage> messages;

  const ChatGptPayload({required this.model, required this.messages});

  @override
  Map<String, dynamic> toJson() => {
    'model': model.code,
    'messages': messages.map((message) => message.toJson()).toList()
  };
}