import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

// Bottom Navigation Controller using GetX
class BottomNavController extends GetxController {
  // The current selected index of the bottom navigation bar
  var currentIndex = 0.obs;

  // Function to handle screen navigation via index
  void changeTabIndex(int index) {
    currentIndex.value = index;
  }
}

// Main Screen with Bottom Navigation
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Create an instance of BottomNavController
    final BottomNavController controller = Get.put(BottomNavController());

    return Scaffold(
      body: Obx(() {
        return PersistentTabView(
          context,
          controller: PersistentTabController(initialIndex: controller.currentIndex.value),
          screens: [
            HomeScreen(),
            HomeScreen(),
            HomeScreen(),
          ],
          items: [
            PersistentBottomNavBarItem(
              icon: Icon(Icons.home),
              title: 'Home',
              activeColorPrimary: Colors.green,
              inactiveColorPrimary: Colors.grey,
            ),
            PersistentBottomNavBarItem(
              icon: Icon(Icons.person),
              title: 'Profile',
              activeColorPrimary: Colors.green,
              inactiveColorPrimary: Colors.grey,
            ),
            PersistentBottomNavBarItem(
              icon: Icon(Icons.settings),
              title: 'Settings',
              activeColorPrimary: Colors.green,
              inactiveColorPrimary: Colors.grey,
            ),
          ],
          navBarHeight: 60,
          onItemSelected: (index) {
            controller.changeTabIndex(index); // Update current index
          },
        );
      }),
    );
  }
}



