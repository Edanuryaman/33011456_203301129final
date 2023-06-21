// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
              'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBzoIFJjaS84guh6z-ab08lnyf3_baY-Nc',
    appId: '1:814815693895:web:96a2a9fc2bcc465b833562',
    messagingSenderId: '814815693895',
    projectId: 'risetimedev2023',
    authDomain: 'risetimedev2023.firebaseapp.com',
    storageBucket: 'risetimedev2023.appspot.com',
    measurementId: 'G-51WRD7TE97',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDBp-j6irZn1bu-2zYAMYc2fYY-HqXCvS8',
    appId: '1:814815693895:android:ada2b506741ed10c833562',
    messagingSenderId: '814815693895',
    projectId: 'risetimedev2023',
    storageBucket: 'risetimedev2023.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCncmv4D2l1hjdisW9Kxt2b5o2TqlI2GnM',
    appId: '1:814815693895:ios:00a215ebfd1fa233833562',
    messagingSenderId: '814815693895',
    projectId: 'risetimedev2023',
    storageBucket: 'risetimedev2023.appspot.com',
    iosClientId: '814815693895-v24r7ip62ndnokons8sip3k0cgv2aq0b.apps.googleusercontent.com',
    iosBundleId: 'com.example.risetimedev2023',
  );
}
