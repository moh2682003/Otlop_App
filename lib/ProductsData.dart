const List<Map<String, String>> sampleProducts = [
  {
    "name": "Vanilla Latte",
    "brand": "Costa",
    "category": "Latte",
    "price": "120",
    "tag": "Hot",
    "image": "assets/images/icon/gggg.jpg",
    "desc": "Smooth espresso with steamed milk and a touch of vanilla.",
  },
  {
    "name": "Dark Chocolate Mocha Latte",
    "brand": "Costa",
    "category": "Latte",
    "price": "145",
    "tag": "New",
    "image": "assets/images/icon/gggg.jpg",
    "desc": "Rich dark chocolate blended with espresso and creamy milk.",
  },
  {
    "name": "Caramel Macchiato",
    "brand": "Costa",
    "category": "Macchiato",
    "price": "135",
    "tag": "",
    "image": "assets/images/icon/gggg.jpg",
    "desc": "Espresso marked over vanilla milk with a caramel drizzle.",
  },
  {
    "name": "Flat White",
    "brand": "Costa",
    "category": "Latte",
    "price": "110",
    "tag": "",
    "image": "assets/images/icon/gggg.jpg",
    "desc": "Velvety microfoam poured over a double shot of espresso.",
  },
  {
    "name": "Double Caramel Frappuccino",
    "brand": "Starbucks",
    "category": "Frappuccino",
    "price": "200",
    "tag": "Cold",
    "image": "assets/images/icon/gggg.jpg",
    "desc": "Blended coffee with caramel sauce and whipped cream.",
  },
  {
    "name": "Caramel Latte",
    "brand": "Starbucks",
    "category": "Latte",
    "price": "150",
    "tag": "",
    "image": "assets/images/icon/gggg.jpg",
    "desc": "Espresso with steamed milk and sweet caramel syrup.",
  },
];

List<Map<String, String>> sortProducts(
  List<Map<String, String>> list,
  int sortIndex,
) {
  final List<Map<String, String>> sorted = List.from(list);

  int priceOf(Map<String, String> p) => int.tryParse(p["price"] ?? "") ?? 0;

  if (sortIndex == 1) {
    sorted.sort((a, b) => priceOf(a).compareTo(priceOf(b)));
  } else if (sortIndex == 2) {
    sorted.sort((a, b) => priceOf(b).compareTo(priceOf(a)));
  } else if (sortIndex == 3) {
    sorted.sort((a, b) => (a["name"] ?? "").compareTo(b["name"] ?? ""));
  }

  return sorted;
}
