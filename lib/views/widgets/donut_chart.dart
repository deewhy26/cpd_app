
import 'dart:math';

import 'package:flutter/material.dart';

class ChartSection {
  final Color color;
  final double value;

  ChartSection({required this.color, required this.value});
}

class DonutChart extends StatelessWidget {
  final double radius;
  final double strokeWidth;
  final List<ChartSection> sections;

  const DonutChart({
    Key? key,
    required this.radius,
    required this.strokeWidth,
    required this.sections,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(radius * 2, radius * 2),
      painter: _DonutChartPainter(
        radius: radius,
        strokeWidth: strokeWidth,
        sections: sections,
      ),
    );
  }
}

class _DonutChartPainter extends CustomPainter {
  final double radius;
  final double strokeWidth;
  final List<ChartSection> sections;

  _DonutChartPainter({
    required this.radius,
    required this.strokeWidth,
    required this.sections,
  });

  @override
  void paint(Canvas canvas, Size size) {
    double totalValue = 0;
    sections.forEach((section) {
      totalValue += section.value;
    });

    double startAngle = -pi / 2;
    double endAngle = 0;
    for (var i = 0; i < sections.length; i++) {
      final section = sections[i];
      final sweepAngle = (section.value / totalValue) * 2 * pi;
      endAngle = startAngle + sweepAngle;

      final rect = Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: radius,
      );

      final paint = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth
        ..color = section.color;

      canvas.drawArc(rect, startAngle, sweepAngle, false, paint);
      startAngle = endAngle;
    }
  }

  @override
  bool shouldRepaint(_DonutChartPainter oldDelegate) => false;
}