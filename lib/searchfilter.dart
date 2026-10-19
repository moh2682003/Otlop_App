import 'package:flutter/material.dart';
import 'package:otlop_app/AppStyle.dart';

class clsSearchFilter extends StatelessWidget {
  final String hText;

  const clsSearchFilter({super.key, required this.hText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xFFF5F5F5),
              hintText: hText,
              hintStyle: Appstyle.font14withSemiBold.copyWith(color: Colors.grey),
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 12),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Appstyle.MainColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(Icons.filter_alt_outlined, color: Colors.white),
        ),
      ],
    );
  }
}
