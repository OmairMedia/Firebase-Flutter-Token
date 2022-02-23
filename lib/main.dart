import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:meribiltyapp/screens/onboarding/splashscreen.dart';
import 'package:meribiltyapp/config/firebaseconfig.dart';
import 'package:meribiltyapp/services/firebase.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:meribiltyapp/services/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseConfig.platformOptions);
  login();
  runApp(const MyApp());
  checkCurrentUser();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('es', ''), // Spanish, no country code
      ],
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
