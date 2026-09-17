import 'dart:math' as math;
import 'package:flutter/material.dart';

class OrderAcceptedScreen extends StatelessWidget {
  const OrderAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.center,
            radius: 1.1,
            colors: [
              Colors.white,
              Color(0xFFFBFCFC),
              Color(0xFFFDF3F3),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              children: [
                const Spacer(flex: 2),

                // =========================================
                // Success Illustration
                // =========================================

                SizedBox(
                  width: 430,
                  height: 430,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Green circle
                      Container(
                        width: 320,
                        height: 320,
                        decoration: const BoxDecoration(
                          color: Color(0xFF55B878),
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(22),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white.withOpacity(0.65),
                              width: 4,
                            ),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 145,
                              weight: 700,
                            ),
                          ),
                        ),
                      ),

                      // Top green dot
                      Positioned(
                        top: 20,
                        left: 105,
                        child: _circle(
                          size: 34,
                          color: const Color(0xFF55B878),
                        ),
                      ),

                      // Top orange dot
                      Positioned(
                        top: 58,
                        left: 175,
                        child: _circle(
                          size: 20,
                          color: const Color(0xFFFF5B3D),
                        ),
                      ),

                      // Orange outlined circle
                      Positioned(
                        top: 180,
                        left: 25,
                        child: _outlineCircle(
                          size: 30,
                          color: const Color(0xFFFFAA22),
                        ),
                      ),

                      // Purple outlined circle
                      Positioned(
                        top: 235,
                        right: 25,
                        child: _outlineCircle(
                          size: 30,
                          color: const Color(0xFFB04DFF),
                        ),
                      ),

                      // Bottom green outlined circle
                      Positioned(
                        bottom: 38,
                        left: 125,
                        child: _outlineCircle(
                          size: 32,
                          color: const Color(0xFF55B878),
                        ),
                      ),

                      // Bottom blue dot
                      Positioned(
                        bottom: 0,
                        left: 220,
                        child: _circle(
                          size: 30,
                          color: const Color(0xFF6379F5),
                        ),
                      ),

                      // Small green dot
                      Positioned(
                        bottom: 25,
                        left: 170,
                        child: _circle(
                          size: 17,
                          color: const Color(0xFF55B878),
                        ),
                      ),

                      // Red curved line
                      Positioned(
                        top: 45,
                        right: 20,
                        child: Transform.rotate(
                          angle: -0.25,
                          child: const _CurvedLine(
                            color: Color(0xFFFF6546),
                          ),
                        ),
                      ),

                      // Blue curved line
                      Positioned(
                        left: 0,
                        bottom: 90,
                        child: Transform.rotate(
                          angle: -0.15,
                          child: const _CurvedLine(
                            color: Color(0xFF6379F5),
                          ),
                        ),
                      ),

                      // Orange curved line
                      Positioned(
                        right: 65,
                        bottom: 35,
                        child: Transform.rotate(
                          angle: 0.3,
                          child: const _CurvedLine(
                            color: Color(0xFFFFAA22),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 35),

                // =========================================
                // Title
                // =========================================

                const Text(
                  'Your Order has been\naccepted',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 42,
                    height: 1.25,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF171727),
                  ),
                ),

                const SizedBox(height: 30),

                // =========================================
                // Description
                // =========================================

                const Text(
                  'Your items has been placed and is on\n'
                  'it’s way to being processed',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 23,
                    height: 1.5,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF858585),
                  ),
                ),

                const Spacer(flex: 3),

                // =========================================
                // Track Order Button
                // =========================================

                SizedBox(
                  width: double.infinity,
                  height: 135,
                  child: ElevatedButton(
                    onPressed: () {
                      // Track Order
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
                      'Track Order',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 35),

                // =========================================
                // Back To Home
                // =========================================

                GestureDetector(
                  onTap: () {
                    Navigator.popUntil(
                      context,
                      (route) => route.isFirst,
                    );
                  },
                  child: const Text(
                    'Back to home',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF171727),
                    ),
                  ),
                ),

                const Spacer(flex: 1),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // =========================================
  // Circle
  // =========================================

  static Widget _circle({
    required double size,
    required Color color,
  }) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }

  // =========================================
  // Outline Circle
  // =========================================

  static Widget _outlineCircle({
    required double size,
    required Color color,
  }) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: color,
          width: 2,
        ),
      ),
    );
  }
}

// =====================================================
// Curved Decoration
// =====================================================

class _CurvedLine extends StatelessWidget {
  final Color color;

  const _CurvedLine({
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 90,
      child: CustomPaint(
        painter: _CurvePainter(color),
      ),
    );
  }
}

class _CurvePainter extends CustomPainter {
  final Color color;

  _CurvePainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round;

    final path = Path();

    path.moveTo(10, 55);

    path.cubicTo(
      35,
      60,
      65,
      55,
      68,
      25,
    );

    path.cubicTo(
      70,
      10,
      78,
      5,
      85,
      3,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}