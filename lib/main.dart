import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_design/Theme/light_theme.dart';

import 'login_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
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
