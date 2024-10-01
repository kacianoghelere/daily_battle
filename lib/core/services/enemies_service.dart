import 'package:daily_battle/core/constants/chat_gpt_payload.dart';
import 'package:daily_battle/core/exceptions/chat_gpt_exception.dart';
import 'package:daily_battle/core/services/chat_gpt_service.dart';
import 'package:logger/logger.dart';

class EnemiesService {
  static Future<String> fetchEnemyInfo() async {
    Logger logger = Logger();

    try {
      var content = await ChatGptService.fetchData(
        payload: chatGptPayload
      );

      return content;
    } on ChatGptException catch (error) {
      logger.e(error);

      return error.message;
    } on Exception catch (error) {
      logger.e(error);

      return 'Não foi possível carregar os dados do inimigo.';
    }
  }
}