import 'package:flutter/material.dart';
import 'custom_bottom_navbar.dart'; 

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: Center(
        child: Text(
          "Your shopping cart is empty.",
          style: TextStyle(fontSize: 18),
        ),
      ),
bottomNavigationBar: CustomBottomNavbar(selectedIndex: 1),

    );
    
  }
}
