import 'package:flutter/material.dart';
import 'package:flutter_application_1/comfortable_food.dart';

class ComfortFoodApp extends StatelessWidget {
  const ComfortFoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
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
                // Image that adapts its size based on screen dimensions
                Image.asset(
                  'assets/illustartion_image.png',
                  width: isSmallScreen ? size.width * 0.6 : size.width * 0.4,
                  height: isSmallScreen ? size.width * 0.6 : size.width * 0.4,
                ),
                const SizedBox(height: 40),
                // Title text
                Text(
                  "Find your Comfort Food here",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isSmallScreen ? 24 : 28,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                // Subtitle text
                Text(
                  "Here You Can find a chef or dish for every taste and color. Enjoy!",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: isSmallScreen ? 14 : 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                // Button
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
                        builder: (context) =>
                            const ComfortableFoodApp(), // Replace with your actual widget
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
