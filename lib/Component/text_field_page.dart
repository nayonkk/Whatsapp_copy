import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Textfield_page extends StatelessWidget {
  final Leveltext;
  final hinttext;
  final bool obsucured;
  final TextEditingController Controller;

  Textfield_page({
    super.key,
    required this.Leveltext,
    required this.hinttext,
    required this.obsucured,
    required this.Controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        obscureText: obsucured,
        controller: Controller,
        decoration: InputDecoration(
            labelText: Leveltext,
            labelStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
            hintText: hinttext,
            hintStyle:
                TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.black)),
            filled: true,
            fillColor: Theme.of(context).colorScheme.secondary,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
  }
}
