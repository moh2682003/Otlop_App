# Otlop App

A Flutter UI project for a food and coffee ordering app. The project focuses on building clean, reusable screens and widgets.

## Screens

- **Register**: create an account with name, email, phone and password.
- **Login**: sign in screen with a "Remember me" option.
- **Home**: greeting, location, search, horizontal categories and brands lists, and a scrollable products grid.
- **Product Details**: large product image, tags, price, description, quantity selector and an "Add to cart" button.
- **Filter by Brand**: products of a selected brand.
- **Filter by Category**: products of a selected category.

## Navigation

- Register → Home
- Home → Filter by Category (tap a category)
- Home → Filter by Brand (tap a brand)
- Home / Filter pages → Product Details (tap a product card)

## Reusable Widgets

| Widget | File |
| --- | --- |
| Screen header (title, back button, search, items count) | `FilterHeader.dart` |
| Product card used in filter pages | `FilterProductCard.dart` |
| Product card used in the home grid | `productPrice.dart` |
| Price and add button row | `ProductContainer.dart` |
| Custom elevated button | `customElvetdButton.dart` |
| Category item | `catgoryItem.dart` |
| Search bar with filter icon | `searchfilter.dart` |
| Shared colors and text styles | `AppStyle.dart` |

## Project Structure

```
otlop_app/
├── assets/
│   └── images/
├── lib/
│   ├── main.dart
│   ├── RegisterScreen.dart
│   ├── LoginScreesn.dart
│   ├── HomeScreen.dart
│   ├── ProductDetails.dart
│   ├── FilterByBrand.dart
│   ├── FilterByCategory.dart
│   └── ...
└── pubspec.yaml
```

## Getting Started

1. Install the [Flutter SDK](https://docs.flutter.dev/get-started/install).
2. Clone the repository:

```
git clone https://github.com/USERNAME/otlop_app.git
cd otlop_app
```

3. Install the dependencies:

```
flutter pub get
```

4. Run the app on an emulator or a connected device:

```
flutter run
```

## Dependencies

- `flutter_svg` for SVG icons

## Notes

- The project is UI only. Products, brands and categories are static sample data.
- Images and icons must be declared under `assets:` in `pubspec.yaml`.
