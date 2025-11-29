import 'package:flutter/material.dart';

class BuildCircle extends StatelessWidget {
  BuildCircle({
    super.key,
    required this.size,
    required this.color,
    required this.colorBorder,
  });
  final double size;
  final Color color;
  final Color colorBorder;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(color: colorBorder.withAlpha(130), width: 4.5),
        color: Colors.transparent,
        shape: BoxShape.circle,
        // يمكن إضافة تأثير توهج خفيف
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.4),
            blurRadius: size / 20,
            spreadRadius: 10,
            offset: Offset(4, 2),
          ),
        ],
      ),
    );
  }
}
