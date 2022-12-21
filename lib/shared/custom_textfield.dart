// ignore_for_file: prefer_const_constructors, empty_constructor_bodies, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  final TextInputType keybord;
  final bool dots;
  final String enter;

  Mytextfield({
    super.key,
    required this.keybord,
    required this.dots,
    required this.enter,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: keybord,
        obscureText: dots,
        decoration: InputDecoration(
          hintText: enter,
          // To delete borders
          enabledBorder: OutlineInputBorder(
            borderSide: Divider.createBorderSide(context),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          // fillColor: Colors.red,
          filled: true,
          contentPadding: const EdgeInsets.all(8),
        ));
  }
}
