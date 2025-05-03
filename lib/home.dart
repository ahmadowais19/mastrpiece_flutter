import 'package:flutter/material.dart';
import 'custom_bottom_navbar.dart';
import 'product.dart'; // استيراد كلاس المنتج
import 'productDetailsScreen'; 
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 126, 176, 218),
        title: Row(
          children: [
            Image.asset('assets/images/logo.png', height: 50, width: 50),
            const SizedBox(width: 10),
            const Text('Home'),
          ],
        ),
      ),
      body: Column(
        children: [
          // حقل البحث
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search for services...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),

          // شبكة المنتجات
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                childAspectRatio: 3 / 2,
              ),
              itemBuilder: (context, index) {
                final product = products[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailsScreen(product: product),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 3,
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(product.imageUrl, fit: BoxFit.cover),
                        ),
                        SizedBox(height: 5),
                        Text(product.name, style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("\$${product.price}", style: TextStyle(color: Colors.green)),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
bottomNavigationBar: CustomBottomNavbar(selectedIndex:0),
    );
  }
}
