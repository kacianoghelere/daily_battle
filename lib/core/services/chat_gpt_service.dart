import 'dart:convert';
import 'package:daily_battle/core/constants/chat_gpt_payload.dart';
import 'package:http/http.dart' as http;

class ChatGptService {
  Future<String> fetchEnemyInfo() async {
    final response = await http.post(
      Uri.parse('https://api.openai.com/v1/chat/completions'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer YOUR_API_KEY',
      },
      body: CHAT_GPT_PAYLOAD.toJson(),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      return data['choices'][0]['message']['content'];
    } else {
      return 'Erro ao obter informações';
    }
  }
}