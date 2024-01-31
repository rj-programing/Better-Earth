import 'package:betterearth/loginpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'hompage4.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
    builder: (context, snapshot) {
    try {
    if (snapshot.hasData) {
    return HomePage4();
    } else {
    return LoginPage();
    }
    } catch (e) {
    print("Error: $e");
    return Container(); // or display an error message
    }
    },
    ),
    );
  }
}
