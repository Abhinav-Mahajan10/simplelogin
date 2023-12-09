import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyDsRkKdKpYGmXMPKH7XD8glBBSbx3gwbTM',
    appId: '1:719428052330:web:7f25b0fa7cdeb9e73bb113',
    messagingSenderId: '719428052330',
    projectId: 'email-android-project',
    authDomain: 'email-android-project.firebaseapp.com',
    storageBucket: 'email-android-project.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCc9cFJqblJuhuBAhhWENtXGi-eqZhjMxA',
    appId: '1:719428052330:android:16a34d4a81a2ae263bb113',
    messagingSenderId: '719428052330',
    projectId: 'email-android-project',
    storageBucket: 'email-android-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAwFe-XeWkfRwMO_fLgBBRqHCHXsDEzTV0',
    appId: '1:719428052330:ios:8ee868674f8b44173bb113',
    messagingSenderId: '719428052330',
    projectId: 'email-android-project',
    storageBucket: 'email-android-project.appspot.com',
    androidClientId: '719428052330-dkhe9apvcsu0bht7kn91c3prrmebcg84.apps.googleusercontent.com',
    iosClientId: '719428052330-017br0qu74tr3f7j3naijvi47ij490v2.apps.googleusercontent.com',
    iosBundleId: 'com.example.workMail',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAwFe-XeWkfRwMO_fLgBBRqHCHXsDEzTV0',
    appId: '1:719428052330:ios:f8a1a2be0cf8c5703bb113',
    messagingSenderId: '719428052330',
    projectId: 'email-android-project',
    storageBucket: 'email-android-project.appspot.com',
    androidClientId: '719428052330-dkhe9apvcsu0bht7kn91c3prrmebcg84.apps.googleusercontent.com',
    iosClientId: '719428052330-2cjs0b41570dpfp4a7ev4bdujqrm0hia.apps.googleusercontent.com',
    iosBundleId: 'com.example.workMail.RunnerTests',
  );
}
