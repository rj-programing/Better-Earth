

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'button.dart';
import 'textfields.dart';
import 'compo.dart';
import 'signup.dart';


class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();


  void signuserIn() async{

    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: usernameController.text,
        password: passwordController.text,
    );
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
                  const SizedBox(height: 30),
                  //logo
                  Image.asset("lib/images/logo1.png",
                    height: 70,
                  ),

      const SizedBox(height: 30),
                  //welcome screen

                  Text(
                    'SignIn To BetterEarth',
                    style: TextStyle(color: Colors.grey[700],
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 50),

                  //username taxtfield

                  MyTextField(
                    controller: usernameController,
                    hintText: 'E-mail',
                    obscureText: false,
                  ),
                  const SizedBox(height: 20),

                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),
                  //password textfield

                  const SizedBox(height: 10),

                  //forgot username

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Forgot Username?',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  //sign in button

                  Buttons(
                    onTap: signuserIn,
                  ),

                  const SizedBox(height: 10),

                  //or continue with

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Text('Or Continue With',
                            style: TextStyle(
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                        Expanded(child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),


                  //google + apple sign in buttons

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      //google button

                      SquareTile(imagePath: 'lib/images/google.png'),

                      //apple button
                      const SizedBox(width: 40),

                      SquareTile(imagePath: 'lib/images/face.png'),
                    ],
                  ),

                  //not a member? register now option

                  const SizedBox(height: 25),

                  Text('Not a Member?',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },

                  child: Text('Register now',
                    style: TextStyle(
                      color: Colors.blue[500],
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
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
