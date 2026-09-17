import 'package:flutter/material.dart';

class BeverageCard extends StatelessWidget {
  final String name;
  final String size;
  final String price;
  final String image;

  const BeverageCard({
    super.key,
    required this.name,
    required this.size,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: const Color(0xFFE1E1E1), width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product image
            Expanded(
              flex: 5,
              child: Center(child: Image.asset(image, fit: BoxFit.contain)),
            ),

            const SizedBox(height: 12),

            // Product name
            Text(
              name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF171727),
              ),
            ),

            const SizedBox(height: 8),

            // Size
            Text(
              '$size, Price',
              style: const TextStyle(fontSize: 18, color: Color(0xFF858585)),
            ),

            const SizedBox(height: 16),

            // Price + button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF171727),
                  ),
                ),

                Container(
                  width: 62,
                  height: 62,
                  decoration: BoxDecoration(
                    color: const Color(0xFF55B878),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add, color: Colors.white, size: 34),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
