import 'package:flutter/material.dart';
import 'package:otlop_app/AppStyle.dart';
import 'package:otlop_app/OtherLogMethodButton.dart';

class clsSocialLoginSection extends StatelessWidget {
  final String supText;
  final String maiText;
  final void Function() onPressedLink;

  const clsSocialLoginSection({
    super.key,
    required this.maiText,
    required this.supText,
    required this.onPressedLink,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: Divider(color: Appstyle.supColor, thickness: 1)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Or With",
                  style: Appstyle.font14withSemiBold.copyWith(
                    color: Appstyle.supColor,
                  ),
                ),
              ),
              Expanded(child: Divider(color: Appstyle.supColor, thickness: 1)),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: clsOtherLogMethodButton(
                  IconText: "GitHup",
                  ImagePath: "assets/images/icon/githup.svg",
                ),
              ),

              SizedBox(width: 20),
              Expanded(
                child: clsOtherLogMethodButton(
                  IconText: "GitLap",
                  ImagePath: "assets/images/icon/gitlapicon.svg",
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(supText, style: Appstyle.font14withSemiBold),
                TextButton(
                  onPressed: onPressedLink,
                  child: Text(
                    maiText,
                    style: Appstyle.font14withSemiBold.copyWith(
                      color: Appstyle.MainColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
