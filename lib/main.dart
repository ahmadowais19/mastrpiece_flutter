import 'package:flutter/material.dart';
import 'splash.dart'; // استدعاء شاشة ال[سبلاش
import 'signup.dart'; 
import 'login.dart';
import 'home.dart'; 
import 'Product.dart';
import 'custom_bottom_navbar.dart';
import 'cart_screen.dart'; 
import 'favorite_screen.dart';
import 'profile_screen.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Demo',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      
      routes: {
        '/signup': (context) => Signup(),
        '/login': (context) => Login(),
        '/home': (context) => HomeScreen(),
        '/cart_screen': (context) => CartScreen(),
        '/favorite_screen': (context) => FavoriteScreen(),
        '/profile_screen': (context) => ProfileScreen(),
        
      }, // أول شاشة تظهر
    );
    
  }

}
