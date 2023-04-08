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
    apiKey: 'AIzaSyDmyyGdscWyUGBNISr0mFqtuCJXx1s5dm4',
    appId: '1:140099292949:web:3fd7bb2e3c0b408c60231c',
    messagingSenderId: '140099292949',
    projectId: 'be-alert-23a3c',
    authDomain: 'be-alert-23a3c.firebaseapp.com',
    storageBucket: 'be-alert-23a3c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBbProBWlTeb92LyMMx-BP_6m6gh13ipSk',
    appId: '1:140099292949:android:52aa6c2ad89e78c760231c',
    messagingSenderId: '140099292949',
    projectId: 'be-alert-23a3c',
    storageBucket: 'be-alert-23a3c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBmVHnXRPxMpQsh8WoS8U5dbNIWhpf_5ZE',
    appId: '1:140099292949:ios:fbf5a9ef0fd2fb3560231c',
    messagingSenderId: '140099292949',
    projectId: 'be-alert-23a3c',
    storageBucket: 'be-alert-23a3c.appspot.com',
    iosClientId: '140099292949-j6aunlt3gdlrpct5c2c6d4ub3m2958hd.apps.googleusercontent.com',
    iosBundleId: 'miu.csgp.bealert',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBmVHnXRPxMpQsh8WoS8U5dbNIWhpf_5ZE',
    appId: '1:140099292949:ios:fbf5a9ef0fd2fb3560231c',
    messagingSenderId: '140099292949',
    projectId: 'be-alert-23a3c',
    storageBucket: 'be-alert-23a3c.appspot.com',
    iosClientId: '140099292949-j6aunlt3gdlrpct5c2c6d4ub3m2958hd.apps.googleusercontent.com',
    iosBundleId: 'miu.csgp.bealert',
  );
}
