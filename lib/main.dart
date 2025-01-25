import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_screen.dart';
import 'package:flutter_application_1/payment_page.dart';
import 'package:flutter_application_1/photo_upload.dart';
import 'package:flutter_application_1/signup_screen.dart';
import 'splash_screen.dart'; // First screen
import 'comfort_food.dart'; // Second screen
import 'comfortable_food.dart'; // Third screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Start with the Splash Screen
      routes: {
        '/': (context) => const SplashScreen(), // First screen
        '/comfortFood': (context) => const ComfortFoodApp(), // Second screen
        '/comfortableFood': (context) => const ComfortableFoodApp(), // Third screen
        '/loginscreen': (context) => const LoginScreen(), // Third screen
        '/SignupPage': (context) => SignupPage(), // Third screen
        '/PaymentPage': (context) => PaymentPage(), // Third screen
        '/PhotoUploadPage': (context) => PhotoUploadPage(), // Third screen
      },
    );
  }
}
