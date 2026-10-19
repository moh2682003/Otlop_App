import 'package:flutter/material.dart';
import 'package:otlop_app/productPrice.dart';

class clsFilterList extends StatelessWidget {
  final String pName;
  final String pDecs;
  final String ImageSource;
  final String Price;
  final String catgory;
  final int Count;

  const clsFilterList({
    super.key,
    required this.pName,
    required this.pDecs,
    required this.ImageSource,
    required this.Price,
    required this.catgory,
    required this.Count,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.only(top: 12.0, bottom: 25.0),
      itemCount: Count,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        mainAxisExtent: 310,
      ),
      itemBuilder: (context, index) {
        return ProductContainer(
          pName: pName,
          pDescription: pDecs,
          imagePath: ImageSource,
          price: Price,
          category: catgory,
        );
      },
    );
  }
}
