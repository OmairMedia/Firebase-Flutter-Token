import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:firebase_auth/firebase_auth.dart';

Future<void> login() async {
  var url = Uri.parse('https://api.meribilty.com/api/user_login_1');

  // Vendor -> +923340261234
  // Driver -> +923187218762
  // User -> +923243280234

  var response = await http.post(url, body: {'phone': '+923243280234'});
  // print('Response status: ${response.statusCode}');
  // print('Response body: ${response.body}');
  var decodedResponse = jsonDecode(response.body);
  var token = decodedResponse['token'];
  var type = decodedResponse['type'];
  print(type);
  // print('Decoded body: ${decodedResponse}');

  try {
    UserCredential userloginStatus =
        await FirebaseAuth.instance.signInWithCustomToken(token);
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
    }
  }

  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');

      // get idToken of user
      FirebaseAuth.instance.currentUser
          ?.getIdToken(true)
          .then((idToken) => {print('idToken -------> $idToken')});
    }
  });
}
