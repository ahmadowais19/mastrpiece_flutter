import 'package:flutter/material.dart';
import 'custom_bottom_navbar.dart'; 

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite"),
      ),
      body: Center(
        child: Text(
          "No favorite items yet.",
          style: TextStyle(fontSize: 18),
        ),
      ),
bottomNavigationBar: CustomBottomNavbar(selectedIndex: 2),

    );
  }
}
