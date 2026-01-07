
import 'package:flutter/material.dart';

/// 🎨 Corner Painter (unchanged)
class CornerPainter extends CustomPainter {
  final double stroke;
  final bool left;
  final bool top;

  CornerPainter({
    required this.stroke,
    required this.left,
    required this.top,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = stroke
      ..style = PaintingStyle.stroke;

    final path = Path();

    if (left && top) {
      path.moveTo(0, size.height);
      path.lineTo(0, 0);
      path.lineTo(size.width, 0);
    } else if (!left && top) {
      path.moveTo(size.width, size.height);
      path.lineTo(size.width, 0);
      path.lineTo(0, 0);
    } else if (left && !top) {
      path.moveTo(0, 0);
      path.lineTo(0, size.height);
      path.lineTo(size.width, size.height);
    } else {
      path.moveTo(size.width, 0);
      path.lineTo(size.width, size.height);
      path.lineTo(0, size.height);
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
