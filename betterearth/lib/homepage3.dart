import 'package:flutter/material.dart';
import 'loginpage.dart';

class HomePage3 extends StatelessWidget {
  const HomePage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/images/blue.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [

                SizedBox(height: 40),
                // Logo
                Image.asset(
                  "lib/images/1.jpg",
                  height: 250,
                ),
                SizedBox(height: 50),
                Text(
                  'Support Every Community',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text(
                    'Search and choose the charity based on their activity. Select a charity after knowing everything about it.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(height: 100),
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
              child: GestureDetector(
    onTap: (){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LoginPage()),
    );
    },
    child: Container(
    padding: const EdgeInsets.all(15),
    margin: const EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
    color: Colors.green,
    borderRadius: BorderRadius.circular(8)
    ),
    child: const Center(
    child: Text(
    'Get Started',
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 22,

    ),
    ),
    ),
    ),
              ),
                  ),
    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
