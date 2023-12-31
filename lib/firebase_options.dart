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
    apiKey: 'AIzaSyCYxblPXLv4qpNdPDW8GCsoTqtO4a7n6Vk',
    appId: '1:602051815071:web:fd8700da025b8b7cc1a4aa',
    messagingSenderId: '602051815071',
    projectId: 'todoapp-22a11',
    authDomain: 'todoapp-22a11.firebaseapp.com',
    databaseURL: 'https://todoapp-22a11-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'todoapp-22a11.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAulYAVroCyXPGmKFdSYvZ_4z-j-ErpJEU',
    appId: '1:602051815071:android:4e63da332f1fb13ac1a4aa',
    messagingSenderId: '602051815071',
    projectId: 'todoapp-22a11',
    databaseURL: 'https://todoapp-22a11-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'todoapp-22a11.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA0zFqOnSxYv9gIyeE9jh3NmtT9xlzKAyY',
    appId: '1:602051815071:ios:67f5422b5be066ebc1a4aa',
    messagingSenderId: '602051815071',
    projectId: 'todoapp-22a11',
    databaseURL: 'https://todoapp-22a11-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'todoapp-22a11.appspot.com',
    iosClientId: '602051815071-0k7lnj0eko3al5imttcq8gqgbpu99fo8.apps.googleusercontent.com',
    iosBundleId: 'com.appflutter.todoapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA0zFqOnSxYv9gIyeE9jh3NmtT9xlzKAyY',
    appId: '1:602051815071:ios:67f5422b5be066ebc1a4aa',
    messagingSenderId: '602051815071',
    projectId: 'todoapp-22a11',
    databaseURL: 'https://todoapp-22a11-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'todoapp-22a11.appspot.com',
    iosClientId: '602051815071-0k7lnj0eko3al5imttcq8gqgbpu99fo8.apps.googleusercontent.com',
    iosBundleId: 'com.appflutter.todoapp',
  );
}
