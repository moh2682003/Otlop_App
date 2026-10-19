import 'package:flutter/material.dart';
import 'package:otlop_app/AppStyle.dart';
import 'package:otlop_app/HomeScreen.dart';

class clsTagChip extends StatelessWidget {
  final String label;
  final bool isMain;

  const clsTagChip({super.key, required this.label, this.isMain = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      decoration: BoxDecoration(
        color: isMain
            ? const Color.fromRGBO(255, 245, 243, 1)
            : const Color(0xFFF3F3F3),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: isMain ? Appstyle.MainColor : Colors.black54,
        ),
      ),
    );
  }
}

class clsQuantitySelector extends StatelessWidget {
  final int quantity;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  const clsQuantitySelector({
    super.key,
    required this.quantity,
    required this.onAdd,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE0E0E0)),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: onRemove,
            customBorder: const CircleBorder(),
            child: const CircleAvatar(
              radius: 16,
              backgroundColor: Color(0xFFF3F3F3),
              child: Icon(Icons.remove, size: 18, color: Colors.black54),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Text(
              "$quantity",
              style: Appstyle.font18withbold.copyWith(fontSize: 16),
            ),
          ),
          InkWell(
            onTap: onAdd,
            customBorder: const CircleBorder(),
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Appstyle.MainColor,
              child: const Icon(Icons.add, size: 18, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class clsProductDetails extends StatefulWidget {
  final String pName;
  final int price;
  final String pDescription;
  final String imagePath;
  final List<String> tags;

  const clsProductDetails({
    super.key,
    this.pName = "Glazed Donuts",
    this.price = 180,
    this.pDescription =
        "Classic ring donuts hand-dipped in a signature sugar glaze while still warm from the fryer. Light, pillowy and irresistibly sweet.",
    this.imagePath = "assets/images/icon/gggg.jpg",
    this.tags = const ["Classic", "Donuts"],
  });

  @override
  State<clsProductDetails> createState() => _clsProductDetailsState();
}

class _clsProductDetailsState extends State<clsProductDetails> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    final double imageHeight = MediaQuery.of(context).size.height * 0.42;
    final double topInset = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: imageHeight,
            child: Image.asset(widget.imagePath, fit: BoxFit.cover),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(top: imageHeight - 30),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 40,
                      height: 4,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE0E0E0),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      for (int i = 0; i < widget.tags.length; i++)
                        clsTagChip(label: widget.tags[i], isMain: i == 0),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    widget.pName,
                    style: Appstyle.MainTitle24WithBold.copyWith(fontSize: 28),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "${widget.price}",
                        style: Appstyle.MainTitle24WithBold.copyWith(
                          fontSize: 28,
                          color: Appstyle.MainColor,
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Text(
                        "EGP",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Divider(color: Color(0xFFEEEEEE)),
                  const SizedBox(height: 12),
                  const Text(
                    "ABOUT THIS ITEM",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.pDescription,
                    style: Appstyle.font14withSemiBold.copyWith(
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: topInset + 10,
            left: 20,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white.withValues(alpha: 0.85),
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  } else {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const clsHomeScreen(),
                      ),
                    );
                  }
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: Color(0xFFEEEEEE))),
          ),
          child: Row(
            children: [
              clsQuantitySelector(
                quantity: quantity,
                onAdd: () => setState(() => quantity++),
                onRemove: () {
                  if (quantity > 1) {
                    setState(() => quantity--);
                  }
                },
              ),
              const SizedBox(width: 16),
              Expanded(
                child: SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Appstyle.MainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {},
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "Add to cart · ${widget.price * quantity} EGP",
                        style: Appstyle.font17withSemiBold.copyWith(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
