import 'package:betterearth/homepage.dart';
import 'package:flutter/material.dart';
import 'hompage4.dart';

class Buttons extends StatelessWidget {

  final Function()? onTap;

  const Buttons({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(8)
        ),
        child: const Center(
          child: Text(
            'Sign in',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
            ),
          ),
       );
  }
}
