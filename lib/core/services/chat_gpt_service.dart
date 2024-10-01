import 'dart:convert';
import 'package:daily_battle/core/exceptions/chat_gpt_exception.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class ChatGptService {
  static Future<String> fetchData({required Object payload}) async {
    Logger logger = Logger();

    logger.d('VAI TENTAR COMUNICAR');

    final response = await http.post(
      Uri.parse(dotenv.env['OPEN_AI_API_URL']!),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${dotenv.env['CHATGPT_API_KEY']!}',
      },
      body: jsonEncode(payload)
    );

    logger.d(response.statusCode);

    if (response.statusCode == 200) {
      logger.d('CONSEGUIU COMUNICAR');
      logger.d(response.body);

      final data = jsonDecode(response.body);

      return data['choices'][0]['message']['content'];
    } else {
      logger.e('NÃO CONSEGUIU COMUNICAR');
      throw ChatGptException('Erro ao obter informações');
    }
  }
}