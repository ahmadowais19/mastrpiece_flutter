import 'package:flutter/material.dart';
import 'custom_bottom_navbar.dart'; 

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Center(
        child: Text(
          "Welcome to your profile!",
          style: TextStyle(fontSize: 18),
        ),
      ),
bottomNavigationBar: CustomBottomNavbar(selectedIndex: 3),

    );
  }
}
