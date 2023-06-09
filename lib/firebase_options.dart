// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDbD8TMfi1bvSu1QPLDE4EasJVArpzEPgc',
    appId: '1:775432155246:web:0e8e404887e6921aeeb67f',
    messagingSenderId: '775432155246',
    projectId: 'homefinance-c3c4c',
    authDomain: 'homefinance-c3c4c.firebaseapp.com',
    storageBucket: 'homefinance-c3c4c.appspot.com',
    measurementId: 'G-C764DT4624',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAjnSFOZZXPFKSgEhbLTo6BCwAp_R2NLVc',
    appId: '1:775432155246:android:39b2b21c343db2b3eeb67f',
    messagingSenderId: '775432155246',
    projectId: 'homefinance-c3c4c',
    storageBucket: 'homefinance-c3c4c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDeQZIASHZ09XR297g5Jv9Gi6xZN15HD4g',
    appId: '1:775432155246:ios:8cca057ea8f80a53eeb67f',
    messagingSenderId: '775432155246',
    projectId: 'homefinance-c3c4c',
    storageBucket: 'homefinance-c3c4c.appspot.com',
    iosClientId:
        '775432155246-8f4p0m611gj9a86j3kpc37rsqlguogan.apps.googleusercontent.com',
    iosBundleId: 'com.example.financeApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDeQZIASHZ09XR297g5Jv9Gi6xZN15HD4g',
    appId: '1:775432155246:ios:8cca057ea8f80a53eeb67f',
    messagingSenderId: '775432155246',
    projectId: 'homefinance-c3c4c',
    storageBucket: 'homefinance-c3c4c.appspot.com',
    iosClientId:
        '775432155246-8f4p0m611gj9a86j3kpc37rsqlguogan.apps.googleusercontent.com',
    iosBundleId: 'com.example.financeApp',
  );
}
