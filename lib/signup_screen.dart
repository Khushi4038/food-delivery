import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottom_bar.dart';
// Assuming 'PaymentPage' is the next step after signup
import 'payment_page.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isSmallScreen = size.width < 600;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/food_image.png', // Replace with your actual image asset
              width: isSmallScreen ? 100 : 150,
              height: isSmallScreen ? 100 : 150,
            ),
            const SizedBox(height: 20),
            Text(
              "Appetizing",
              style: TextStyle(
                color: Colors.green,
                fontSize: isSmallScreen ? 24 : 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Sign Up For Free",
              style: TextStyle(
                color: Colors.grey,
                fontSize: isSmallScreen ? 14 : 16,
              ),
            ),
            const SizedBox(height: 20),
            // Name TextField
            TextField(
              decoration: InputDecoration(
                hintText: "Name",
                filled: true,
                fillColor: Colors.grey[800],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Email TextField
            TextField(
              decoration: InputDecoration(
                hintText: "Email",
                filled: true,
                fillColor: Colors.grey[800],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Password TextField
            TextField(
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: const Icon(Icons.lock, color: Colors.grey),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
                filled: true,
                fillColor: Colors.grey[800],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Keep me signed in Checkbox
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                  activeColor: Colors.green,
                ),
                const Text(
                  "Keep Me Signed In",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // Create Account Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: isSmallScreen ? 30 : 50,
                  vertical: isSmallScreen ? 12 : 15,
                ),
              ),
              onPressed: () {
                // Navigate to PaymentPage (or the signup process page)
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainScreen(),
                  ),
                );
              },
              child: Text(
                "Create Account",
                style: TextStyle(
                  fontSize: isSmallScreen ? 14 : 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Already have an account? TextLink
            GestureDetector(
              onTap: () {
                // Navigate back to LoginScreen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              child: const Text(
                "Already have an account?",
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
