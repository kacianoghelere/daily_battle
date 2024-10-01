class ChatGptException implements Exception {
  final String message;

  ChatGptException(this.message);

  @override
  String toString() {
    return message;
  }
}