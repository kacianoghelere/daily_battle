// ignore_for_file: type=lint
import 'package:daily_battle/core/exceptions/unsupported_platform_exception.dart';
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedPlatformException('web');
    }

    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedPlatformException('macos');
      case TargetPlatform.windows:
        throw UnsupportedPlatformException('windows');
      case TargetPlatform.linux:
        throw UnsupportedPlatformException('linux');
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static final FirebaseOptions android = FirebaseOptions(
    apiKey: dotenv.env['FIREBASE_ANDROID_API_KEY']!,
    appId: dotenv.env['FIREBASE_ANDROID_APP_ID']!,
    messagingSenderId: dotenv.env['FIREBASE_ANDROID_MESSAGING_SENDER_ID']!,
    projectId: dotenv.env['FIREBASE_ANDROID_PROJECT_ID']!,
    storageBucket: dotenv.env['FIREBASE_ANDROID_STORAGE_BUCKET']!,
  );

  static final FirebaseOptions ios = FirebaseOptions(
    apiKey: dotenv.env['FIREBASE_IOS_API_KEY']!,
    appId: dotenv.env['FIREBASE_IOS_APP_ID']!,
    messagingSenderId: dotenv.env['FIREBASE_IOS_MESSAGING_SENDER_ID']!,
    projectId: dotenv.env['FIREBASE_IOS_PROJECT_ID']!,
    storageBucket: dotenv.env['FIREBASE_IOS_STORAGE_BUCKET']!,
    iosClientId: dotenv.env['FIREBASE_IOS_CLIENT_ID']!,
    iosBundleId: dotenv.env['FIREBASE_IOS_BUNDLE_ID']!,
  );
}
