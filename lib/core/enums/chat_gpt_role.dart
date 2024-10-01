enum ChatGptMessageRole {
  system,
  user;
}

extension ChatGptMessageRoleExtension on ChatGptMessageRole {
  String get name {
    return switch (this) {
      ChatGptMessageRole.system => 'system',
      ChatGptMessageRole.user => 'user'
    };
  }
}