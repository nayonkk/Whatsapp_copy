import 'package:flutter/material.dart';

import 'Component/Button.dart';
import 'Component/Registor_now_page.dart';
import 'Component/text_field_page.dart';
import 'Registor_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

// ignore: camel_case_types
class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

// ignore: camel_case_types
class _Login_pageState extends State<Login_page> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  sentEmaildata() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.toString(),
        password: passwordController.text.toString());
    emailController.clear();
    passwordController.clear();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onTertiary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.message,
              size: 50,
              color: Theme.of(context).colorScheme.primary,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Welcome back, you have been missed!",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            SizedBox(
              height: 30,
            ),
            Textfield_page(
              hinttext: "Enter your mail..",
              Leveltext: "Email",
              obsucured: false,
              Controller: emailController,
            ),
            SizedBox(
              height: 10,
            ),
            Textfield_page(
              Leveltext: "password",
              hinttext: "Enter your password",
              obsucured: true,
              Controller: passwordController,
            ),
            SizedBox(
              height: 20,
            ),
            Button_page(
              onTap: () {
                setState(() {
                  sentEmaildata();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Your document added sucessfully")));
                });
              },
              text: "Login Button",
            ),
            SizedBox(
              height: 10,
            ),
            Resistor_now_page(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Registor_page()));
              },
              member_text: "Not a member? ",
              Resistor_text: "Resistor Now",
            ),
          ],
        ),
      ),
    );
  }
}
