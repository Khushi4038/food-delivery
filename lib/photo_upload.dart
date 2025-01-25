import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class PhotoUploadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isSmallScreen = size.width < 600;  // Consider small screens as less than 600px width

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
        child: SingleChildScrollView(  // Make the content scrollable on small devices
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Upload Your Photo Profile",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: isSmallScreen ? 18 : 20, // Adjust font size based on screen width
                ),
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
                      padding: EdgeInsets.symmetric(
                        horizontal: isSmallScreen ? 10 : 20,
                        vertical: isSmallScreen ? 10 : 15,
                      ),
                    ),
                    icon: const Icon(Icons.image, color: Colors.white),
                    label: Text(
                      "From Gallery",
                      style: TextStyle(color: Colors.white, fontSize: isSmallScreen ? 14 : 16),
                    ),
                    onPressed: () {},
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white12,
                      padding: EdgeInsets.symmetric(
                        horizontal: isSmallScreen ? 10 : 20,
                        vertical: isSmallScreen ? 10 : 15,
                      ),
                    ),
                    icon: const Icon(Icons.camera_alt, color: Colors.white),
                    label: Text(
                      "Take Photo",
                      style: TextStyle(color: Colors.white, fontSize: isSmallScreen ? 14 : 16),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 30),
              // Profile image placeholder
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
                  padding: EdgeInsets.symmetric(
                    horizontal: isSmallScreen ? 30 : 50,
                    vertical: isSmallScreen ? 12 : 15,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Finish",
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
