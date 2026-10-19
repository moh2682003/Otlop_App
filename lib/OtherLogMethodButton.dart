import 'package:flutter/material.dart';
import 'package:otlop_app/AppStyle.dart';
import 'package:flutter_svg/flutter_svg.dart';

class clsOtherLogMethodButton extends StatelessWidget {
  final String IconText;
  final String ImagePath;

  const clsOtherLogMethodButton({
    super.key,
    required this.IconText,
    required this.ImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Color(0xFFE0E0E0)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(vertical: 12), //
      ),
      onPressed: () {},
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(ImagePath, width: 24, height: 24),
            const SizedBox(width: 8),
            Text(
              IconText,
              style: Appstyle.font14withSemiBold.copyWith(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
