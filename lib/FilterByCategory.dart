import 'package:flutter/material.dart';
import 'package:otlop_app/FilterHeader.dart';
import 'package:otlop_app/FilterProductCard.dart';

class clsFilterByCategory extends StatelessWidget {
  final String categoryName;

  const clsFilterByCategory({super.key, this.categoryName = "Latte"});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> products = const [
      {
        "name": "Vanilla Latte",
        "brand": "Costa",
        "price": "120",
        "tag": "Hot",
        "desc": "Smooth espresso with steamed milk and a touch of vanilla.",
      },
      {
        "name": "Dark Chocolate Mocha Latte",
        "brand": "Costa",
        "price": "145",
        "tag": "New",
        "desc": "Rich dark chocolate blended with espresso and creamy milk.",
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Column(
            children: [
              clsFilterHeader(title: categoryName, itemsCount: products.length),
              Expanded(
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(bottom: 20),
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    mainAxisExtent: 225,
                  ),
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return clsFilterProductCard(
                      pName: product["name"] ?? "",
                      pDescription: product["desc"] ?? "",
                      brand: product["brand"] ?? "",
                      category: categoryName,
                      price: product["price"] ?? "0",
                      imagePath: "assets/images/icon/gggg.jpg",
                      tag: product["tag"] ?? "",
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
