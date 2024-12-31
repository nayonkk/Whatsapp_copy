import 'package:flutter/material.dart';


import 'Component/Button.dart';
import 'Component/Registor_now_page.dart';
import 'Component/text_field_page.dart';


class Registor_page extends StatefulWidget {
  const Registor_page({super.key});

  @override
  State<Registor_page> createState() => _Registor_pageState();
}

class _Registor_pageState extends State<Registor_page> {
  TextEditingController RegemailController = TextEditingController();
  TextEditingController RegpasswordController = TextEditingController();
  TextEditingController confirmRegpasswordController = TextEditingController();

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
              "Lets create an account",
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
              Controller: RegemailController,
            ),
            SizedBox(
              height: 10,
            ),
            Textfield_page(
              Leveltext: "password",
              hinttext: "Enter your password",
              obsucured: true,
              Controller: RegpasswordController,
            ),
            SizedBox(
              height: 10,
            ),
            Textfield_page(
              Leveltext: "Confirm",
              hinttext: "Comfirm your password",
              obsucured: true,
              Controller: confirmRegpasswordController,
            ),
            SizedBox(
              height: 20,
            ),
            Button_page(
              onTap: () {},
              text: "Register",
            ),
            SizedBox(
              height: 10,
            ),
            Resistor_now_page(
              onTap: () {
                Navigator.pop(context);
              },
              member_text: "already have an account? ",
              Resistor_text: "Login Now",
            ),
          ],
        ),
      ),
    );
  }
}
