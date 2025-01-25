import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class PhotoUploadPage extends StatelessWidget {
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
              "Upload Your Photo Profile",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(height: 10),
            const Text(
              "This data will be displayed in your account profile for security",
              style: TextStyle(color: Colors.white54),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white12,
                  ),
                  icon: const Icon(Icons.image, color: Colors.white),
                  label: const Text("From Gallery", style: TextStyle(color: Colors.white)),
                  onPressed: () {},
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white12,
                  ),
                  icon: const Icon(Icons.camera_alt, color: Colors.white),
                  label: const Text("Take Photo", style: TextStyle(color: Colors.white)),
                  onPressed: () {},
                ),
              ],
            ),
            const Spacer(),
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://via.placeholder.com/150'),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Finish"),
            ),
          ],
        ),
      ),
    );
  }
}
