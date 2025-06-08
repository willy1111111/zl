import 'package:flutter/material.dart';
import 'dart:math'; // Modified: Added dart:math import for cos/sin functions

import '../../../core/app_export.dart';

class StarWidget extends StatelessWidget {
  const StarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15.h,
      height: 15.h,
      child: CustomPaint(
        painter: StarPainter(),
      ),
    );
  }
}

class StarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xFFFFF400)
      ..style = PaintingStyle.fill;

    final path = Path();
    final center = Offset(size.width / 2, size.height / 2);
    final outerRadius = size.width / 2;
    final innerRadius = outerRadius * 0.4;

    for (int i = 0; i < 5; i++) {
      final outerAngle =
          (i * 2 * pi) / 5 - pi / 2; // Modified: Changed 3.14159 to pi constant
      final innerAngle = ((i + 0.5) * 2 * pi) / 5 -
          pi / 2; // Modified: Changed 3.14159 to pi constant

      final outerX = center.dx + outerRadius * cos(outerAngle);
      final outerY = center.dy + outerRadius * sin(outerAngle);
      final innerX = center.dx + innerRadius * cos(innerAngle);
      final innerY = center.dy + innerRadius * sin(innerAngle);

      if (i == 0) {
        path.moveTo(outerX, outerY);
      } else {
        path.lineTo(outerX, outerY);
      }
      path.lineTo(innerX, innerY);
    }

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
