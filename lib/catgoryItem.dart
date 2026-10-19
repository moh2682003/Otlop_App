import 'package:flutter/material.dart';

class clsCategoryItem extends StatelessWidget {
  final String imagePath;
  final String title;

  const clsCategoryItem({
    super.key,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 70,
          height: 70,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: const Color(0xFFF9F9F9),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Image.asset(
              imagePath,
              fit: Alignment.center == null ? BoxFit.fill : BoxFit.contain,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.black
          ),
        ),
      ],
    );
  }
}
