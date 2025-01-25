import 'package:flutter/material.dart';
import 'package:flutter_application_1/comfort_food.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the next screen after 4 seconds
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ComfortFoodApp(), // Replace with your next screen widget
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          'assets/food_image.png', // Replace with your image asset path
          width: size.width * 0.5, // 50% of screen width
          height: size.height * 0.3, // 30% of screen height
          fit: BoxFit.contain, // Ensure the image is scaled properly
        ),
      ),
    );
  }
}
