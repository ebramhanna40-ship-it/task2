import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int quantity = 1;
  bool isFavorite = false;
  bool showDetails = true;

  final Color darkColor = const Color(0xFF191827);
  final Color greenColor = const Color(0xFF55B878);

  @override
  Widget build(BuildContext context) {
    final double totalPrice = 4.99 * quantity;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ================= IMAGE SECTION =================
                    Container(
                      height: 380,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF3F5F4),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                      child: Stack(
                        children: [
                          // Back button
                          Positioned(
                            left: 35,
                            top: 25,
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                size: 30,
                                color: darkColor,
                              ),
                            ),
                          ),

                          // Share button
                          Positioned(
                            right: 30,
                            top: 25,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.ios_share,
                                size: 29,
                                color: darkColor,
                              ),
                            ),
                          ),

                          // Product image
                          Center(
                            child: Image.asset(
                              'images/home/apple.png',
                              width: 300,
                              height: 270,
                              fit: BoxFit.contain,
                              errorBuilder: (context, error, stackTrace) {
                                return const Icon(
                                  Icons.apple,
                                  size: 180,
                                  color: Colors.red,
                                );
                              },
                            ),
                          ),

                          // Page indicator
                          Positioned(
                            bottom: 60,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 32,
                                  height: 6,
                                  decoration: BoxDecoration(
                                    color: greenColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Container(
                                  width: 6,
                                  height: 6,
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Container(
                                  width: 6,
                                  height: 6,
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 42),

                    // ================= PRODUCT NAME =================
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Naturel Red Apple',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: darkColor,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  '1kg, Price',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.shade500,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Favorite
                          IconButton(
                            onPressed: () {
                              setState(() {
                                isFavorite = !isFavorite;
                              });
                            },
                            icon: Icon(
                              isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              size: 45,
                              color: isFavorite
                                  ? Colors.red
                                  : Colors.grey.shade500,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 35),

                    // ================= QUANTITY + PRICE =================
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              // Minus
                              IconButton(
                                onPressed: () {
                                  if (quantity > 1) {
                                    setState(() {
                                      quantity--;
                                    });
                                  }
                                },
                                icon: Icon(
                                  Icons.remove,
                                  size: 28,
                                  color: Colors.grey.shade400,
                                ),
                              ),

                              // Quantity
                              Container(
                                width: 75,
                                height: 65,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey.shade300,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(22),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  '$quantity',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: darkColor,
                                  ),
                                ),
                              ),

                              // Plus
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    quantity++;
                                  });
                                },
                                icon: Icon(
                                  Icons.add,
                                  size: 32,
                                  color: greenColor,
                                ),
                              ),
                            ],
                          ),

                          // Price
                          Text(
                            '\$${totalPrice.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: darkColor,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 35),

                    Divider(
                      height: 1,
                      thickness: 1,
                      indent: 50,
                      endIndent: 50,
                      color: Colors.grey.shade200,
                    ),

                    // ================= PRODUCT DETAIL =================
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 25,
                      ),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                showDetails = !showDetails;
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Product Detail',
                                  style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: darkColor,
                                  ),
                                ),
                                Icon(
                                  showDetails
                                      ? Icons.keyboard_arrow_up
                                      : Icons.keyboard_arrow_down,
                                  size: 32,
                                  color: darkColor,
                                ),
                              ],
                            ),
                          ),

                          if (showDetails) ...[
                            const SizedBox(height: 22),
                            Text(
                              'Apples Are Nutritious. Apples May Be Good For '
                              'Weight Loss. Apples May Be Good For Your Heart. '
                              'As Part Of A Healthful And Varied Diet.',
                              style: TextStyle(
                                fontSize: 17,
                                height: 1.6,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),

                    Divider(
                      height: 1,
                      thickness: 1,
                      indent: 50,
                      endIndent: 50,
                      color: Colors.grey.shade200,
                    ),

                    // ================= NUTRITIONS =================
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 20,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Nutritions',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: darkColor,
                            ),
                          ),
                          const Spacer(),

                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              '100gr',
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          const SizedBox(width: 15),

                          Icon(
                            Icons.arrow_forward_ios,
                            size: 22,
                            color: darkColor,
                          ),
                        ],
                      ),
                    ),

                    Divider(
                      height: 1,
                      thickness: 1,
                      indent: 50,
                      endIndent: 50,
                      color: Colors.grey.shade200,
                    ),

                    // ================= REVIEW =================
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 20,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Review',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: darkColor,
                            ),
                          ),

                          const Spacer(),

                          Row(
                            children: List.generate(
                              5,
                              (index) => const Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: Icon(
                                  Icons.star,
                                  color: Color(0xFFFF6347),
                                  size: 25,
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(width: 15),

                          Icon(
                            Icons.arrow_forward_ios,
                            size: 22,
                            color: darkColor,
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),

            // ================= ADD TO BASKET =================
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 20),
              child: SizedBox(
                width: double.infinity,
                height: 75,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Product added to basket')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: greenColor,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Add To Basket',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
