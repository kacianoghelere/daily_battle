enum ChatGptModel implements Comparable<ChatGptModel> {
  gpt_3_5(code: 'gpt-3.5'),
  gpt_4(code: 'gpt-4');

  const ChatGptModel({required this.code});

  final String code;

  @override
  int compareTo(ChatGptModel other) => code.compareTo(other.code);
}

enum ChatGptMessageRole {
  system,
  user,
}