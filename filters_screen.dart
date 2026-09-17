import 'package:flutter/material.dart';

import '../widgets/filter_checkbox.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  // Categories
  bool eggs = true;
  bool noodles = false;
  bool chips = false;
  bool fastFood = false;

  // Brands
  bool individualCollection = false;
  bool cocola = true;
  bool lfad = false;
  bool kaziFarmas = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          children: [
            // =========================
            // Top Bar
            // =========================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 40,
                      color: Color(0xFF171727),
                    ),
                  ),

                  const Expanded(
                    child: Center(
                      child: Text(
                        'Filters',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF171727),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 50),
                ],
              ),
            ),

            // =========================
            // Filter Area
            // =========================
            Expanded(
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 35),
                padding: const EdgeInsets.fromLTRB(50, 55, 50, 35),
                decoration: const BoxDecoration(
                  color: Color(0xFFF2F3F3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(55),
                    topRight: Radius.circular(55),
                  ),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // =========================
                    // Categories
                    // =========================
                    const Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 39,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF171727),
                      ),
                    ),

                    const SizedBox(height: 50),

                    FilterCheckbox(
                      title: 'Eggs',
                      value: eggs,
                      onChanged: (value) {
                        setState(() {
                          eggs = value ?? false;
                        });
                      },
                    ),

                    const SizedBox(height: 28),

                    FilterCheckbox(
                      title: 'Noodles & Pasta',
                      value: noodles,
                      onChanged: (value) {
                        setState(() {
                          noodles = value ?? false;
                        });
                      },
                    ),

                    const SizedBox(height: 28),

                    FilterCheckbox(
                      title: 'Chips & Crisps',
                      value: chips,
                      onChanged: (value) {
                        setState(() {
                          chips = value ?? false;
                        });
                      },
                    ),

                    const SizedBox(height: 28),

                    FilterCheckbox(
                      title: 'Fast Food',
                      value: fastFood,
                      onChanged: (value) {
                        setState(() {
                          fastFood = value ?? false;
                        });
                      },
                    ),

                    const SizedBox(height: 60),

                    // =========================
                    // Brand
                    // =========================
                    const Text(
                      'Brand',
                      style: TextStyle(
                        fontSize: 39,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF171727),
                      ),
                    ),

                    const SizedBox(height: 48),

                    FilterCheckbox(
                      title: 'Individual Collection',
                      value: individualCollection,
                      onChanged: (value) {
                        setState(() {
                          individualCollection = value ?? false;
                        });
                      },
                    ),

                    const SizedBox(height: 28),

                    FilterCheckbox(
                      title: 'Cocola',
                      value: cocola,
                      onChanged: (value) {
                        setState(() {
                          cocola = value ?? false;
                        });
                      },
                    ),

                    const SizedBox(height: 28),

                    FilterCheckbox(
                      title: 'Ifad',
                      value: lfad,
                      onChanged: (value) {
                        setState(() {
                          lfad = value ?? false;
                        });
                      },
                    ),

                    const SizedBox(height: 28),

                    FilterCheckbox(
                      title: 'Kazi Farmas',
                      value: kaziFarmas,
                      onChanged: (value) {
                        setState(() {
                          kaziFarmas = value ?? false;
                        });
                      },
                    ),

                    const Spacer(),

                    // =========================
                    // Apply Filter Button
                    // =========================
                    SizedBox(
                      width: double.infinity,
                      height: 135,
                      child: ElevatedButton(
                        onPressed: () {
                          // هنا نقدر بعدين نطبق الفلاتر
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF55B878),
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                        ),
                        child: const Text(
                          'Apply Filter',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
