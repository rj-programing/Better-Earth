import 'package:betterearth/loginpage.dart';
import 'package:flutter/material.dart';
import 'button1.dart';
import 'textfields.dart';
import 'compo.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final usernameController = TextEditingController();
  final mobileController = TextEditingController();
  final passwordController = TextEditingController();
  final cpasswordController = TextEditingController();


  void signuserIn(){
    print('Congratulation you are signed in');
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),
                  //logo
                  Image.asset("lib/images/logo1.png",
                    height: 70,
                  ),

                  const SizedBox(height: 20),
                  //welcome screen

                  Text(
                    'SignUp To BetterEarth',
                    style: TextStyle(color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 40),

                  //username taxtfield

                  MyTextField(
                    controller: usernameController,
                    hintText: 'E-mail',
                    obscureText: false,
                  ),
                  const SizedBox(height: 20),

                  MyTextField(
                    controller: mobileController,
                    hintText: 'Mobile no.',
                    obscureText: false,
                  ),

                  const SizedBox(height: 20),

                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  MyTextField(
                    controller: cpasswordController,
                    hintText: 'Confirm Password',
                    obscureText: true,
                  ),
                  //password textfield
                  const SizedBox(height: 30),
                  //sign in button

                  Buttons1(
                    onTap: signuserIn,
                  ),
                          const SizedBox(height: 30),
                    Text('Already have an account?',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },

                  child: Text('Sign In',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                  ),
              ),
                ],
              ),
            ),
          ),
        )

    );

  }
}
