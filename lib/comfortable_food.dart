import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_screen.dart';

class ComfortableFoodApp extends StatelessWidget {
  const ComfortableFoodApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get screen size
    final size = MediaQuery.of(context).size;
    final isSmallScreen = size.width < 600; // Define a breakpoint for small screens

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Dynamically sized image
                Image.asset(
                  'assets/duck_image.png',
                  width: isSmallScreen ? size.width * 0.6 : size.width * 0.4,
                  height: isSmallScreen ? size.width * 0.6 : size.width * 0.4,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 40),
                // Title text with dynamic font size
                Text(
                  "Appetizing is where your comfort Food Lives",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isSmallScreen ? 24 : 28,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                // Subtitle text with dynamic font size
                Text(
                  "Enjoy a fast and smooth food delivery at your doorstep",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: isSmallScreen ? 14 : 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                // Responsive button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: isSmallScreen ? 30 : 50,
                      vertical: isSmallScreen ? 10 : 15,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(
                      fontSize: isSmallScreen ? 14 : 16,
                      fontWeight: FontWeight.bold,
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
