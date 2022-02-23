import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

class DefaultFirebaseConfig {
  static FirebaseOptions get platformOptions {
    if (kIsWeb) {
      // Web
      return const FirebaseOptions(
        appId: '1:330892733913:android:a87762c44e3f7af3dd7dc8',
        apiKey: 'AIzaSyCIldIJQGJ7YfJZQBTDmVPLYkHvlzsmaco',
        projectId: 'meribilty-331311',
        messagingSenderId: '330892733913',
      );
    } else if (Platform.isIOS || Platform.isMacOS) {
      // iOS and MacOS
      return const FirebaseOptions(
        appId: '1:330892733913:android:a87762c44e3f7af3dd7dc8',
        apiKey: 'AIzaSyCIldIJQGJ7YfJZQBTDmVPLYkHvlzsmaco',
        projectId: 'meribilty-331311',
        messagingSenderId: '330892733913',
        iosBundleId: 'io.flutter.plugins.firebasecoreexample',
      );
    } else {
      // Android
      return const FirebaseOptions(
        appId: '1:330892733913:android:a87762c44e3f7af3dd7dc8',
        apiKey: 'AIzaSyCIldIJQGJ7YfJZQBTDmVPLYkHvlzsmaco',
        projectId: 'meribilty-331311',
        messagingSenderId: '330892733913',
      );
    }
  }
}
