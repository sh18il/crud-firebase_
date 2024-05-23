// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDfCAsE5TCR_-kebLlNy3W8iuloSKaTqpw',
    appId: '1:1076744966771:web:8d796fbb0f7f0667c91006',
    messagingSenderId: '1076744966771',
    projectId: 'studentdata-1642d',
    authDomain: 'studentdata-1642d.firebaseapp.com',
    storageBucket: 'studentdata-1642d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDTm3tv3FYB_zpGNdXlR68oBP6KHasbRrQ',
    appId: '1:1076744966771:android:af66ec963981db3ac91006',
    messagingSenderId: '1076744966771',
    projectId: 'studentdata-1642d',
    storageBucket: 'studentdata-1642d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAveWDnGvOmbkhz9wpT0J1ZrOJfr4i41V4',
    appId: '1:1076744966771:ios:65d6aaef82492ff1c91006',
    messagingSenderId: '1076744966771',
    projectId: 'studentdata-1642d',
    storageBucket: 'studentdata-1642d.appspot.com',
    iosBundleId: 'com.example.stProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAveWDnGvOmbkhz9wpT0J1ZrOJfr4i41V4',
    appId: '1:1076744966771:ios:65d6aaef82492ff1c91006',
    messagingSenderId: '1076744966771',
    projectId: 'studentdata-1642d',
    storageBucket: 'studentdata-1642d.appspot.com',
    iosBundleId: 'com.example.stProject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDfCAsE5TCR_-kebLlNy3W8iuloSKaTqpw',
    appId: '1:1076744966771:web:e248d0a86a9b3f0ec91006',
    messagingSenderId: '1076744966771',
    projectId: 'studentdata-1642d',
    authDomain: 'studentdata-1642d.firebaseapp.com',
    storageBucket: 'studentdata-1642d.appspot.com',
  );
}