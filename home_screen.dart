import 'package:flutter/material.dart';

import '../widgets/product_card.dart';
import '../widgets/search_bar.dart';
import '../widgets/category_card2.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),

                // Logo
                Center(child: Image.asset('images/carrot.png', width: 35)),

                const SizedBox(height: 12),

                // Location
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on, color: Colors.grey, size: 22),

                    SizedBox(width: 5),

                    Text(
                      'Dhaka, Banassre',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 22),

                // Search
                const SearchBarWidget(),

                const SizedBox(height: 20),

                // Banner
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'images/home/banner.png',
                    width: double.infinity,
                    height: 115,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(height: 28),

                // Exclusive Offer
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Exclusive Offer',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      'See all',
                      style: TextStyle(
                        color: const Color(0xFF53B175),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 18),

                // Products
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCard(
                        image: 'images/home/banana.png',
                        name: 'Organic Bananas',
                        quantity: '7pcs, Priceg',
                        price: '\$4.99',
                      ),

                      const SizedBox(width: 15),

                      ProductCard(
                        image: 'images/home/apple.png',
                        name: 'Red Apple',
                        quantity: '1kg, Priceg',
                        price: '\$4.99',
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // Best Selling
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Best Selling',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      'See all',
                      style: TextStyle(
                        color: const Color(0xFF53B175),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 18),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCard(
                        image: 'images/home/pepper.png',
                        name: 'Bell Pepper',
                        quantity: '1kg, Priceg',
                        price: '\$4.99',
                      ),

                      const SizedBox(width: 15),

                      ProductCard(
                        image: 'images/home/Ginger.png',
                        name: 'Ginger',
                        quantity: '250g, Priceg',
                        price: '\$4.99',
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // Groceries
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Groceries',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      'See all',
                      style: TextStyle(
                        color: const Color(0xFF53B175),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 18),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryCard(
                        image: 'images/home/pulses.png',
                        title: 'Pulses',
                        color: const Color(0xffFFF2E5),
                      ),

                      const SizedBox(width: 15),

                      CategoryCard(
                        image: 'images/home/rice.png',
                        title: 'Rice',
                        color: const Color(0xffE8F5E9),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                // Grocery Products
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCard(
                        image: 'images/home/beef.png',
                        name: 'Beef Bone',
                        quantity: '1kg, Priceg',
                        price: '\$4.99',
                      ),

                      const SizedBox(width: 15),

                      ProductCard(
                        image: 'images/home/chicken.png',
                        name: 'Broiler Chicken',
                        quantity: '1kg, Priceg',
                        price: '\$4.99',
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: const Color(0xFF53B175),
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront_outlined),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
