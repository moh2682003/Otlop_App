import 'package:flutter/material.dart';
import 'package:otlop_app/AppStyle.dart';

class clsFilterHeader extends StatelessWidget {
  final String title;
  final String searchHint;
  final int itemsCount;

  const clsFilterHeader({
    super.key,
    required this.title,
    required this.itemsCount,
    this.searchHint = "Search products...",
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () => Navigator.maybePop(context),
              icon: const Icon(Icons.arrow_back_ios_new, size: 18),
            ),
            Expanded(
              child: Center(child: Text(title, style: Appstyle.font18withbold)),
            ),
            const SizedBox(width: 48),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: searchHint,
                  hintStyle: Appstyle.font14withSemiBold.copyWith(
                    color: Colors.grey,
                  ),
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
            Icon(Icons.filter_alt_outlined, color: Appstyle.MainColor),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          "$itemsCount items",
          style: const TextStyle(color: Colors.grey, fontSize: 12),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
