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
    apiKey: 'AIzaSyCkuc0Pp1GqqCeSlSy0rVFrwCCDgyEZV9Y',
    appId: '1:248483420100:web:82a7c4169c04a9e3c2b691',
    messagingSenderId: '248483420100',
    projectId: 'note-canvas',
    authDomain: 'note-canvas.firebaseapp.com',
    storageBucket: 'note-canvas.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBr15UqzHdnKeWpIHqxM3mHy9KgQD8U2vk',
    appId: '1:248483420100:android:ef233363b537f0c4c2b691',
    messagingSenderId: '248483420100',
    projectId: 'note-canvas',
    storageBucket: 'note-canvas.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA_C9mYL7r_M-ICYvhJbY0-Hhbc_SOmeZY',
    appId: '1:248483420100:ios:6ac4ee6b0cf6508dc2b691',
    messagingSenderId: '248483420100',
    projectId: 'note-canvas',
    storageBucket: 'note-canvas.appspot.com',
    iosBundleId: 'com.example.notecanvas',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA_C9mYL7r_M-ICYvhJbY0-Hhbc_SOmeZY',
    appId: '1:248483420100:ios:31b2fdb66a81ca2ac2b691',
    messagingSenderId: '248483420100',
    projectId: 'note-canvas',
    storageBucket: 'note-canvas.appspot.com',
    iosBundleId: 'com.example.notecanvas.RunnerTests',
  );
}
