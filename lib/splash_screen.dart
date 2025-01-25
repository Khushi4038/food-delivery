import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/comfortFood'); // Navigate to the 2nd screen
          },
          child: Image.asset(
            'assets/food_image.png', // Replace with your image asset path
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
