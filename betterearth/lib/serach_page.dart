import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: SafeArea(
            child: Column(
              children: [
                TextField(
                  
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
