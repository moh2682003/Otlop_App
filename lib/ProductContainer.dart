import 'package:flutter/material.dart';
import 'package:otlop_app/AppStyle.dart';

class PriceRow extends StatelessWidget {
  final String priceText;
  final String currency;
  final Icon addIco;

  const PriceRow({
    super.key,
    required this.priceText,
    this.currency = "EGP",
    this.addIco = const Icon(Icons.add, color: Colors.white, size: 20),
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              priceText,
              style: Appstyle.font17withSemiBold.copyWith(
                color: Appstyle.MainColor,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              currency,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {},
          child: CircleAvatar(
            radius: 18,
            backgroundColor: Appstyle.MainColor,
            child: addIco,
          ),
        ),
      ],
    );
  }
}
