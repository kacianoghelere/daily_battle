import 'dart:convert';
import 'package:daily_battle/core/enums/chat_gpt.dart';
import 'package:http/http.dart' as http;

class ChatGptMessage {
  final ChatGptMessageRole role;
  final String content;

  ChatGptMessage(this.role, this.content);
}

class ChatGptService {
  Future<String> fetchEnemyInfo() async {
    final response = await http.post(
      Uri.parse('https://api.openai.com/v1/chat/completions'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer YOUR_API_KEY',
      },
      body: jsonEncode({
        'model': 'gpt-4',
        'messages': [
          ChatGptMessage(
            role: ChatGptMessageRole.system,
            content: 'Você é um assistente que fornece informações sobre pessoas.'
          ),
          ChatGptMessage(
            role: ChatGptMessageRole.user,
            content: 'Forneça informações sobre a pessoa chamada.'
          ),
        ],
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['choices'][0]['message']['content'];
    } else {
      return 'Erro ao obter informações';
    }
  }
}