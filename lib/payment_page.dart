import 'package:flutter/material.dart';
import 'package:flutter_application_1/photo_upload.dart'; // Import PhotoUploadPage

class PaymentPage extends StatelessWidget {
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
        child: SingleChildScrollView( // To ensure scrollability on smaller devices
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Payment Method",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: isSmallScreen ? 18 : 20, // Adjust font size based on screen size
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "This data will be displayed in your account profile for security",
                style: TextStyle(color: Colors.white54),
              ),
              const SizedBox(height: 30),
              // PayPal ListTile
              ListTile(
                leading: const Icon(Icons.paypal, color: Colors.white),
                title: Text(
                  "PayPal",
                  style: TextStyle(color: Colors.white, fontSize: isSmallScreen ? 14 : 16),
                ),
                onTap: () {},
              ),
              // Visa ListTile
              ListTile(
                leading: const Icon(Icons.credit_card, color: Colors.white),
                title: Text(
                  "Visa",
                  style: TextStyle(color: Colors.white, fontSize: isSmallScreen ? 14 : 16),
                ),
                onTap: () {},
              ),
              // Payoneer ListTile
              ListTile(
                leading: const Icon(Icons.account_balance_wallet, color: Colors.white),
                title: Text(
                  "Payoneer",
                  style: TextStyle(color: Colors.white, fontSize: isSmallScreen ? 14 : 16),
                ),
                onTap: () {},
              ),
              const SizedBox(height: 30),
              // Next Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PhotoUploadPage()),
                  );
                },
                child: Text(
                  "Next",
                  style: TextStyle(
                    fontSize: isSmallScreen ? 14 : 16, // Adjust font size based on screen size
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
