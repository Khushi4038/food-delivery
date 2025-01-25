import 'package:flutter/material.dart';
import 'package:flutter_application_1/exp_restfilter.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double textScaleFactor = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      backgroundColor: Colors.black,  // Set entire background to black
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Row(
          children: [
            // Left side: Text "Find Your" and "Favorite food"
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Find Your",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Favorite Food",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Spacer(),
            // Right side: Notification bell icon inside square box with curvy border
            Container(
              padding: EdgeInsets.all(screenWidth * 0.02),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05, vertical: screenHeight * 0.02),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar with Search Icon and Filter option
              Row(
                children: [
                  // Search Bar
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search for food...',
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        filled: true,
                        fillColor: Colors.grey[800],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.03),
                  // Filter Option Button
                  GestureDetector(
                    onTap: () {
                      // Filter action logic here
                    },
                    child: Container(
                      padding: EdgeInsets.all(screenWidth * 0.03),
                      decoration: BoxDecoration(
                        color: Colors.grey[700],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.filter_list,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              
              // "Type" Text
              Text(
                "Type",
                style: TextStyle(
                  fontSize: 18 * textScaleFactor,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),

              // Curved Buttons "Chef" and "Menu"
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                ElevatedButton(
  onPressed: () {
    // Navigate to the new screen (MenuScreen)
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ExpRstFilter()),
    );
  },
  style: ElevatedButton.styleFrom(
    shape: StadiumBorder(),
    iconColor: Colors.orange,
  ),
  child:Text("Menu"),
),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      iconColor: Colors.orange,
                    ),
                    child: Text("Menu"),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),

              // "Location" Text
              Text(
                "Location",
                style: TextStyle(
                  fontSize: 18 * textScaleFactor,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),

              // Location Buttons: "1 Km", ">10 km", "<10 km"
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      iconColor: Colors.orange,
                    ),
                    child: Text("1 Km"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      iconColor: Colors.orange,
                    ),
                    child: Text(">10 km"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      iconColor: Colors.orange,
                    ),
                    child: Text("<10 km"),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),

              // "Food" Text
              Text(
                "Food",
                style: TextStyle(
                  fontSize: 18 * textScaleFactor,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),

              // Food Category Buttons (3 on top row, 2 below)
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          iconColor: Colors.orange,
                        ),
                        child: Text("Cake"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          iconColor: Colors.orange,
                        ),
                        child: Text("Soup"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          iconColor: Colors.orange,
                        ),
                        child: Text("Main Course"),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          iconColor: Colors.orange,
                        ),
                        child: Text("Appetizer"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          iconColor: Colors.orange,
                        ),
                        child: Text("Dessert"),
                      ),
                    ],
                  ),
                ],
              ),

              // "Search" Button with Linear Gradient Color
              SizedBox(height: screenHeight * 0.05),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [Colors.orange, Colors.red],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Your search action logic here
                  },
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    iconColor: Colors.green,
                    shadowColor: Colors.green,
                    elevation: 0,
                  ),
                  child: Text(
                    "Search",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 16 * textScaleFactor,
                      fontWeight: FontWeight.bold,
                    ),
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


