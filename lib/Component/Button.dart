import 'package:flutter/material.dart';

class Button_page extends StatelessWidget {
  final void Function()? onTap;
  final text;
   Button_page({super.key, required this.onTap,required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width / 1.2,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.inversePrimary,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.red)),
        child: Center(
            child: Text(
        text,
          style: TextStyle(
              color: Theme.of(context).colorScheme.tertiary, fontSize: 15),
        )),
      ),
    );
  }
}
