import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String name;
  final String image;
  final Color backgroundColor;
  final Color borderColor;

  const CategoryCard({
    super.key,
    required this.name,
    required this.image,
    required this.backgroundColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: borderColor, width: 2),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
              child: Image.asset(image, fit: BoxFit.contain),
            ),
          ),

          // Category Name
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 25),
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
                height: 1.35,
                fontWeight: FontWeight.bold,
                color: Color(0xFF19192D),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
