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
    apiKey: 'AIzaSyACh2tZ-Tl1F_R-588tUMKifaS2_N_hOW4',
    appId: '1:623025121814:web:69088e4e8d9c8e73686337',
    messagingSenderId: '623025121814',
    projectId: 'gnotes-821b1',
    authDomain: 'gnotes-821b1.firebaseapp.com',
    storageBucket: 'gnotes-821b1.appspot.com',
    measurementId: 'G-J9J333JK70',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCGgHss4whTkBa1EfHu6LikVvbilFUTkgw',
    appId: '1:623025121814:android:d7bafcbd81cc32b3686337',
    messagingSenderId: '623025121814',
    projectId: 'gnotes-821b1',
    storageBucket: 'gnotes-821b1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAsUPqonrEfnJ8r856tqpsqvrR-zrm4sFA',
    appId: '1:623025121814:ios:38dcd207ad49c39e686337',
    messagingSenderId: '623025121814',
    projectId: 'gnotes-821b1',
    storageBucket: 'gnotes-821b1.appspot.com',
    iosBundleId: 'com.example.gNotes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAsUPqonrEfnJ8r856tqpsqvrR-zrm4sFA',
    appId: '1:623025121814:ios:b7a53145ab2650c4686337',
    messagingSenderId: '623025121814',
    projectId: 'gnotes-821b1',
    storageBucket: 'gnotes-821b1.appspot.com',
    iosBundleId: 'com.example.gNotes.RunnerTests',
  );
}
