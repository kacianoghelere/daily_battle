class UnsupportedPlatformException implements Exception {
  final String platform;
  final String message;

  UnsupportedPlatformException(this.platform):
    message = 'DefaultFirebaseOptions have not been configured for $platform - '
      'you can reconfigure this by running the FlutterFire CLI again.';

  @override
  String toString() {
    return message;
  }
}