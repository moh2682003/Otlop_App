import 'package:flutter/material.dart';
import 'package:otlop_app/AppStyle.dart';
import 'package:otlop_app/FilterByBrand.dart';
import 'package:otlop_app/FilterByCategory.dart';
import 'package:otlop_app/FilterList.dart';
import 'package:otlop_app/catgoryItem.dart';
import 'package:otlop_app/searchfilter.dart';

class clsHomeScreen extends StatelessWidget {
  const clsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> categories = const [
      {"title": "Frappuccino", "image": "assets/images/icon/coffe.png"},
      {"title": "Latte", "image": "assets/images/icon/coffe.png"},
      {"title": "Mocha", "image": "assets/images/icon/coffe.png"},
      {"title": "Macchiato", "image": "assets/images/icon/coffe.png"},
      {"title": "Macchiato", "image": "assets/images/icon/coffe.png"},
      {"title": "Macchiato", "image": "assets/images/icon/coffe.png"},
      {"title": "Macchiato", "image": "assets/images/icon/coffe.png"},
    ];

    final List<String> brands = const ["Costa", "Starbucks"];

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30.0,
            left: 25.0,
            right: 25.0,
            bottom: 0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good evening 🥐",
                        style: Appstyle.font14withSemiBold,
                      ),
                      Text(
                        "Sayed",
                        style: Appstyle.Font25pxwithSemiBoldweight,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white70,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications_none_outlined),
                        ),
                      ),
                      Positioned(
                        top: 9,
                        right: 9,
                        child: CircleAvatar(
                          backgroundColor: Appstyle.MainColor,
                          radius: 5,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 9, 12, 6),
                child: TextButton(
                  onPressed: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 245, 243, 1),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Icon(
                            Icons.location_on,
                            color: Appstyle.MainColor,
                          ),
                        ),
                        Flexible(
                          child: Text(
                            "14 Tahrir Square, Cairo",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Appstyle.font14withSemiBold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Appstyle.MainColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const clsSearchFilter(hText: "Search coffee, cakes, donuts..."),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Categories", style: Appstyle.font18withbold),
                  Text(
                    "see all",
                    style: Appstyle.font14withSemiBold.copyWith(
                      color: Appstyle.MainColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => clsFilterByCategory(
                                categoryName: category["title"] ?? "",
                              ),
                            ),
                          );
                        },
                        child: clsCategoryItem(
                          imagePath: category["image"] ?? "",
                          title: category["title"] ?? "",
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              Text("Brands", style: Appstyle.font18withbold),
              const SizedBox(height: 10),
              SizedBox(
                height: 44,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  itemCount: brands.length,
                  itemBuilder: (context, index) {
                    return ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                              clsFilterByBrand(brandName: brands[index]),
                          ),
                        );
                      },
                      child: Text(brands[index]),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(width: 15);
                  },
                ),
              ),

              Expanded(
                child: clsFilterList(
                  pName: "Starbucks",
                  pDecs: "Double Caramel Frappuccino",
                  ImageSource: "assets/images/icon/gggg.jpg",
                  Price: "200",
                  catgory: "Frappuccino",
                  Count: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
