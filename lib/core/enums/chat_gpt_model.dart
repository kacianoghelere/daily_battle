enum ChatGptModel {
  gpt_3_5,
  gpt_4o,
  gpt_4o_mini;
}

extension ChatGptModelExtension on ChatGptModel {
  String get code {
    return switch (this) {
      ChatGptModel.gpt_3_5 => 'gpt-3.5-turbo',
      ChatGptModel.gpt_4o => 'gpt-4o',
      ChatGptModel.gpt_4o_mini => 'gpt-4o-mini'
    };
  }
}