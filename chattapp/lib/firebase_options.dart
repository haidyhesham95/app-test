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
    apiKey: 'AIzaSyAk1uwB3BnqQm8HoV3TqpkVRn7m6zLrzF8',
    appId: '1:408081075913:web:c8725d5933c99086430718',
    messagingSenderId: '408081075913',
    projectId: 'chattapp-6c89c',
    authDomain: 'chattapp-6c89c.firebaseapp.com',
    storageBucket: 'chattapp-6c89c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDvarnjPksnf1bXi9Bhl5ztlxLOjagFQCw',
    appId: '1:408081075913:android:137f985dd4ceb82a430718',
    messagingSenderId: '408081075913',
    projectId: 'chattapp-6c89c',
    storageBucket: 'chattapp-6c89c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBNBkXtiUqFV6lkcBV5_EMtkt6zU3RkF-M',
    appId: '1:408081075913:ios:5f0844ac9b236a9e430718',
    messagingSenderId: '408081075913',
    projectId: 'chattapp-6c89c',
    storageBucket: 'chattapp-6c89c.appspot.com',
    iosClientId: '408081075913-djlsh7o2628bhk5sa5p6ds7ujclrgl02.apps.googleusercontent.com',
    iosBundleId: 'com.example.chattapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBNBkXtiUqFV6lkcBV5_EMtkt6zU3RkF-M',
    appId: '1:408081075913:ios:57f6a553fbb8fc4a430718',
    messagingSenderId: '408081075913',
    projectId: 'chattapp-6c89c',
    storageBucket: 'chattapp-6c89c.appspot.com',
    iosClientId: '408081075913-a1odua6r73upu49ael0qe30lf8k0btkk.apps.googleusercontent.com',
    iosBundleId: 'com.example.chattapp.RunnerTests',
  );
}