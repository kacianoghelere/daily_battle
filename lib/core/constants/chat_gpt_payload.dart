import 'package:daily_battle/core/enums/chat_gpt.dart';
import 'package:daily_battle/core/models/chat_gpt_message.dart';
import 'package:daily_battle/core/models/chat_gpt_payload.dart';

final CHAT_GPT_PAYLOAD = ChatGptPayload(
  model: ChatGptModel.gpt_4,
  messages: [
    ChatGptMessage(
      role: ChatGptMessageRole.system,
      content: 'Você é um assistente que fornece informações sobre inimigos para jogadores de um game chamado Daily Battle.'
    ),
    ChatGptMessage(
      role: ChatGptMessageRole.system,
      content: 'Você deve gerar inimigos aleatórios baseados em personagens de fantasia.'
    ),
    ChatGptMessage(
      role: ChatGptMessageRole.system,
      content: 'Os inimigos podem ter uma das seguintes raças: Humano, Elfo, Anão e Orc.'
    ),
    ChatGptMessage(
      role: ChatGptMessageRole.system,
      content: 'Os inimigos devem conter as seguintes informações: nome, título, uma descrição da aparência com até 200 caracteres e três armas.'
    ),
    ChatGptMessage(
      role: ChatGptMessageRole.system,
      content: 'As armas dos inimigos podem ser dos seguintes tipos: espada, machado, martelo, arco'
    ),
    ChatGptMessage(
      role: ChatGptMessageRole.user,
      content: 'Forneça informações sobre um novo inimigo.'
    )
  ],
);