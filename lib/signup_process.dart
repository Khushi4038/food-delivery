import 'package:flutter/material.dart';
import 'payment_page.dart';  // Assuming this is your next screen after completing the signup

class SignupProcess extends StatefulWidget {
  const SignupProcess({Key? key}) : super(key: key);

  @override
  _SignupProcessState createState() => _SignupProcessState();
}

class _SignupProcessState extends State<SignupProcess> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _mobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isSmallScreen = size.width < 600;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView( // To handle keyboard overflow on smaller devices
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Fill in your bio to get started",
                style: TextStyle(color: Colors.white, fontSize: isSmallScreen ? 18 : 20),
              ),
              const SizedBox(height: 10),
              const Text(
                "This data will be displayed in your account profile for security",
                style: TextStyle(color: Colors.white54),
              ),
              const SizedBox(height: 30),
              // First Name TextField
              TextField(
                controller: _firstNameController,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "First Name",
                  hintStyle: const TextStyle(color: Colors.white54),
                  filled: true,
                  fillColor: Colors.white12,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                ),
              ),
              const SizedBox(height: 20),
              // Last Name TextField
              TextField(
                controller: _lastNameController,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Last Name",
                  hintStyle: const TextStyle(color: Colors.white54),
                  filled: true,
                  fillColor: Colors.white12,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                ),
              ),
              const SizedBox(height: 20),
              // Mobile Number TextField
              TextField(
                controller: _mobileNumberController,
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "Mobile Number",
                  hintStyle: const TextStyle(color: Colors.white54),
                  filled: true,
                  fillColor: Colors.white12,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                ),
              ),
              const SizedBox(height: 30),
              // Next Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                onPressed: () {
                  if (_firstNameController.text.isNotEmpty && _lastNameController.text.isNotEmpty && _mobileNumberController.text.isNotEmpty) {
                    // Navigate to the PaymentPage when all fields are filled
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaymentPage()),
                    );
                  } else {
                    // Show a message if fields are empty
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Please fill in all fields")),
                    );
                  }
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
    );
  }
}
