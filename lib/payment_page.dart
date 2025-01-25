import 'package:flutter/material.dart';
import 'package:flutter_application_1/photo_upload.dart';
// ignore: unused_import
import 'photo_upload_page.dart'; // Ensure this contains the PhotoUploadPage class.

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Payment Method",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(height: 10),
            const Text(
              "This data will be displayed in your account profile for security",
              style: TextStyle(color: Colors.white54),
            ),
            const SizedBox(height: 30),
            ListTile(
              leading: const Icon(Icons.paypal, color: Colors.white),
              title: const Text("PayPal", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.credit_card, color: Colors.white),
              title: const Text("Visa", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.account_balance_wallet, color: Colors.white),
              title: const Text("Payoneer", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            const SizedBox(height: 30),
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
              child: const Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
