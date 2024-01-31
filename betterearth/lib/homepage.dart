import 'package:betterearth/loginpage.dart';
import 'package:flutter/material.dart';
import 'homepage2.dart';
import 'loginpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/images/blue.png',
              ),
              fit: BoxFit.cover,
            )
        ),
        child: SafeArea(

          child: Center(

            child: SingleChildScrollView(
              child: Column(
              
                children: [
              
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginPage()),
                            );
                          },
              
                          child:Text(
                            'Skip',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
              
              
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  //logo
                  Image.asset("lib/images/3.jpg",
                    height: 250,
                  ),
                  const SizedBox(height: 50),
                  Text('Know About Organization',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text('Search and choose the charity based on their activity. Select a charity after knowing everything about it.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(height: 100),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
              
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomePage2()),
                            );
                          },
                           child: Stack(
                             children: [
              
                                  Image.asset('lib/images/round.png',
                                   height: 80,
                                   color: Colors.green,
                                 ),
              
              
                               Container(
                                 margin: EdgeInsets.symmetric(vertical: 17.0),
                                 padding: EdgeInsets.symmetric(horizontal: 25.0),
                                 child: Image.asset('lib/images/arro.png',
                                    height: 40,
                                   color: Colors.white,
                                 ),
                               )
              
                             ],
              
                           ),
                        ),
              
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

  }
}
