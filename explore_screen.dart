import 'package:flutter/material.dart';
import 'package:grocery2/Widgets/category_card.dart' show CategoryCard;

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 25),

            // Find Products
            const Text(
              'Find Products',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF19192D),
              ),
            ),

            const SizedBox(height: 55),

            // Search
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Container(
                height: 105,
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F3F2),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Row(
                  children: [
                    SizedBox(width: 30),

                    Icon(Icons.search, size: 45, color: Color(0xFF17171C)),

                    SizedBox(width: 20),

                    Text(
                      'Search Store',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF858585),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 40),

            // Products / Categories
            Expanded(
              child: GridView.count(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                crossAxisCount: 2,
                crossAxisSpacing: 30,
                mainAxisSpacing: 30,
                childAspectRatio: 0.72,

                children: [
                  CategoryCard(
                    name: 'Frash Fruits\n& Vegetable',
                    image: 'images/explore/fruits.png',
                    backgroundColor: const Color(0xFFF0F9F4),
                    borderColor: const Color(0xFF75C99A),
                  ),

                  CategoryCard(
                    name: 'Cooking Oil\n& Ghee',
                    image: 'images/explore/oil.png',
                    backgroundColor: const Color(0xFFFFF7ED),
                    borderColor: const Color(0xFFFFB45C),
                  ),

                  CategoryCard(
                    name: 'Meat & Fish',
                    image: 'images/explore/meat.png',
                    backgroundColor: const Color(0xFFFFE9E5),
                    borderColor: const Color(0xFFFF9285),
                  ),

                  CategoryCard(
                    name: 'Bakery & Snacks',
                    image: 'images/explore/bakery.png',
                    backgroundColor: const Color(0xFFF6EEFA),
                    borderColor: const Color(0xFFD0A8E5),
                  ),

                  CategoryCard(
                    name: 'Dairy & Eggs',
                    image: 'images/explore/dairy.png',
                    backgroundColor: const Color(0xFFFFF8E6),
                    borderColor: const Color(0xFFFFD76A),
                  ),

                  CategoryCard(
                    name: 'Beverages',
                    image: 'images/explore/beverages.png',
                    backgroundColor: const Color(0xFFEAF7FE),
                    borderColor: const Color(0xFF9BD8F5),
                  ),

                  CategoryCard(
                    name: 'Frozen Food',
                    image: 'assets/images/frozen.png',
                    backgroundColor: const Color(0xFFF0EDFF),
                    borderColor: const Color(0xFFA99AFF),
                  ),

                  CategoryCard(
                    name: 'Household',
                    image: 'assets/images/household.png',
                    backgroundColor: const Color(0xFFFFEAF2),
                    borderColor: const Color(0xFFF28DB2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: Container(
        height: 115,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 20,
              offset: const Offset(0, -5),
            ),
          ],
        ),

        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomItem(
              icon: Icons.storefront_outlined,
              title: 'Shop',
              selected: false,
            ),

            BottomItem(
              icon: Icons.manage_search,
              title: 'Explore',
              selected: true,
            ),

            BottomItem(
              icon: Icons.shopping_cart_outlined,
              title: 'Cart',
              selected: false,
            ),

            BottomItem(
              icon: Icons.favorite_border,
              title: 'Favourite',
              selected: false,
            ),

            BottomItem(
              icon: Icons.person_outline,
              title: 'Account',
              selected: false,
            ),
          ],
        ),
      ),
    );
  }
}

// Bottom Navigation Item
class BottomItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool selected;

  const BottomItem({
    super.key,
    required this.icon,
    required this.title,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 34,
          color: selected ? const Color(0xFF53B175) : const Color(0xFF19192D),
        ),

        const SizedBox(height: 7),

        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: selected ? const Color(0xFF53B175) : const Color(0xFF19192D),
          ),
        ),
      ],
    );
  }
}
