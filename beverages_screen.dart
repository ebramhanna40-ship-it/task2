import 'package:flutter/material.dart';

class BeveragesScreen extends StatelessWidget {
  const BeveragesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final beverageItems = [
      {
        'name': 'Diet Coke',
        'size': '355ml',
        'price': '\$1.99',
        'image': 'images/Beverages_images/diet_coke.png',
      },
      {
        'name': 'Sprite Can',
        'size': '325ml',
        'price': '\$1.50',
        'image': 'images/Beverages_images/sprite.png',
      },
      {
        'name': 'Apple & Grape Juice',
        'size': '2L',
        'price': '\$15.99',
        'image': 'images/Beverages_images/apple_juice.png',
      },
      {
        'name': 'Orange Juice',
        'size': '2L',
        'price': '\$15.99',
        'image': 'images/Beverages_images/Orange.png',
      },
      {
        'name': 'Coca Cola Can',
        'size': '325ml',
        'price': '\$4.99',
        'image': 'images/Beverages_images/Coca.png',
      },
      {
        'name': 'Pepsi Can',
        'size': '330ml',
        'price': '\$4.99',
        'image': 'images/Beverages_images/pepsi.png',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Top bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 18),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 30,
                      color: Color(0xFF171727),
                    ),
                  ),

                  const Expanded(
                    child: Center(
                      child: Text(
                        'Beverages',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF171727),
                        ),
                      ),
                    ),
                  ),

                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.tune,
                      size: 32,
                      color: Color(0xFF171727),
                    ),
                  ),
                ],
              ),
            ),

            // Products
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.fromLTRB(24, 10, 24, 20),
                itemCount: beverageItems.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 18,
                  childAspectRatio: 0.67,
                ),
                itemBuilder: (context, index) {
                  final item = beverageItems[index];

                  return beverages(
                    name: item['name']!,
                    size: item['size']!,
                    price: item['price']!,
                    image: item['image']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget beverages({
    required String name,
    required String size,
    required String price,
    required String image,
  }) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Color(0xFFE5E5E5)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(child: Image.asset(image, fit: BoxFit.contain)),
            ),
            const SizedBox(height: 8),
            Text(
              name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF171727),
              ),
            ),
            const SizedBox(height: 4),
            Text(size, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF171727),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color(0xFF53B175),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
