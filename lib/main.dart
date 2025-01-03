import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_design/Theme/light_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: "AIzaSyC2SuZJNo5v62k0o_fAkHMJ234h0yxqXNw",
    appId: "1:375389275831:android:bee2dfcf79d0a64a08af32",
    messagingSenderId: "375389275831",
    projectId: "whats-app-firebase-175c2",
  ));
  // SystemChrome.setSystemUIOverlayStyle(
  //     SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login_page(),
      debugShowCheckedModeBanner: false,
      theme: light_mode,
    );
  }
}
