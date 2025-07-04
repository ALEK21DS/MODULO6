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
    apiKey: 'AIzaSyCGLCzQkzE1_2LX_RI4pg53Mm6fTajKB7c',
    appId: '1:869639134322:web:65ee0988f451e7c304b6eb',
    messagingSenderId: '869639134322',
    projectId: 'biblioteca-45790',
    authDomain: 'biblioteca-45790.firebaseapp.com',
    storageBucket: 'biblioteca-45790.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAlgkxp3pRSHpp-HqZTvfl1V_HadE9ff_k',
    appId: '1:869639134322:android:3cb37413db93d39a04b6eb',
    messagingSenderId: '869639134322',
    projectId: 'biblioteca-45790',
    storageBucket: 'biblioteca-45790.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAvchm-M27F-3e60JqsmhwwOrc65v__-6Y',
    appId: '1:869639134322:ios:790f2f45b0225f8404b6eb',
    messagingSenderId: '869639134322',
    projectId: 'biblioteca-45790',
    storageBucket: 'biblioteca-45790.firebasestorage.app',
    iosBundleId: 'com.example.biblioteca',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAvchm-M27F-3e60JqsmhwwOrc65v__-6Y',
    appId: '1:869639134322:ios:790f2f45b0225f8404b6eb',
    messagingSenderId: '869639134322',
    projectId: 'biblioteca-45790',
    storageBucket: 'biblioteca-45790.firebasestorage.app',
    iosBundleId: 'com.example.biblioteca',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCGLCzQkzE1_2LX_RI4pg53Mm6fTajKB7c',
    appId: '1:869639134322:web:774e7e7c0a72339904b6eb',
    messagingSenderId: '869639134322',
    projectId: 'biblioteca-45790',
    authDomain: 'biblioteca-45790.firebaseapp.com',
    storageBucket: 'biblioteca-45790.firebasestorage.app',
  );
}
