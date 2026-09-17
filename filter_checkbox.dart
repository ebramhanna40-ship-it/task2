import 'package:flutter/material.dart';

class FilterCheckbox extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  const FilterCheckbox({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!value);
      },
      child: Row(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: value ? const Color(0xFF55B878) : Colors.transparent,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: value
                    ? const Color(0xFF55B878)
                    : const Color(0xFFB8B8B8),
                width: 3,
              ),
            ),
            child: value
                ? const Icon(Icons.check, color: Colors.white, size: 34)
                : null,
          ),

          const SizedBox(width: 23),

          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: value
                    ? const Color(0xFF55B878)
                    : const Color(0xFF171727),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
