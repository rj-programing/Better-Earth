import 'package:flutter/material.dart';
import 'loginpage.dart';

class Buttons1 extends StatelessWidget {

  final Function()? onTap;

  const Buttons1({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(8)
        ),
        child: const Center(
          child: Text(
            'Sign up',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,

            ),
          ),
        ),
      ),
    );
  }
}
