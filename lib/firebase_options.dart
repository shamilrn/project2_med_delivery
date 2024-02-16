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
    apiKey: 'AIzaSyAXVposL2AN1Hw_GCu_ul4RqKlWqubaVf0',
    appId: '1:718020661691:web:e344839adad4d0f98d749e',
    messagingSenderId: '718020661691',
    projectId: 'project2-13e77',
    authDomain: 'project2-13e77.firebaseapp.com',
    storageBucket: 'project2-13e77.appspot.com',
    measurementId: 'G-F9Y0H1V3XS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAcJABLxrjo9EdOHtmTiYfI0FFF_dSixcI',
    appId: '1:718020661691:android:ac42dac96567f8fd8d749e',
    messagingSenderId: '718020661691',
    projectId: 'project2-13e77',
    storageBucket: 'project2-13e77.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAkMfaNH4lJCXF9ePSXywDEvLcSP2JZius',
    appId: '1:718020661691:ios:41fac70c1a63f8608d749e',
    messagingSenderId: '718020661691',
    projectId: 'project2-13e77',
    storageBucket: 'project2-13e77.appspot.com',
    iosBundleId: 'com.example.project2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAkMfaNH4lJCXF9ePSXywDEvLcSP2JZius',
    appId: '1:718020661691:ios:972876bf60a455978d749e',
    messagingSenderId: '718020661691',
    projectId: 'project2-13e77',
    storageBucket: 'project2-13e77.appspot.com',
    iosBundleId: 'com.example.project2.RunnerTests',
  );
}
