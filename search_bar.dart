import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      decoration: BoxDecoration(
        color: const Color(0xffF2F3F2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Row(
        children: [
          SizedBox(width: 15),

          Icon(Icons.search, size: 28, color: Colors.black),

          SizedBox(width: 12),

          Text(
            'Search Store',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
