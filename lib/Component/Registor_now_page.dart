import 'package:flutter/material.dart';

class Resistor_now_page extends StatelessWidget {
  final void Function()? onTap;
  final member_text;
  final Resistor_text;

  const Resistor_now_page(
      {super.key,
      required this.onTap,
      required this.member_text,
      required this.Resistor_text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          member_text,
          style: TextStyle(
              fontSize: 15,
              color: Theme.of(context).colorScheme.inversePrimary),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            Resistor_text,
            style: TextStyle(
                fontSize: 15,
                color: Colors.teal.shade700,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
