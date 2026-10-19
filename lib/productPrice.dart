import 'package:flutter/material.dart';
import 'package:otlop_app/AppStyle.dart';
import 'package:otlop_app/ProductContainer.dart';
import 'package:otlop_app/ProductDetails.dart';

class ProductContainer extends StatelessWidget {
  final String pName;
  final String pDescription;
  final String imagePath;
  final String price;
  final String category;

  const ProductContainer({
    super.key,
    required this.pName,
    required this.pDescription,
    required this.imagePath,
    required this.price,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => clsProductDetails(
              pName: pName,
              price: int.tryParse(price) ?? 0,
              pDescription: pDescription,
              imagePath: imagePath,
              tags: [category],
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                child: Image.asset(
                  imagePath,
                  width: double.infinity,
                  height: 160,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 12,
                left: 12,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.6),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    category,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Appstyle.font14withSemiBold,
                ),
                const SizedBox(height: 4),
                Text(
                  pDescription,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Appstyle.font14withSemiBold.copyWith(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 12),
                PriceRow(priceText: price),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}
