import 'package:flutter/material.dart';
import 'package:otlop_app/AppStyle.dart';

class clsCustomElvetdButton extends StatelessWidget {
  const clsCustomElvetdButton({
    super.key,
    required this.BText,
    required this.onPressed,
  });

  final String BText;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Appstyle.MainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
        ),
        onPressed: onPressed,
        child: Text(BText, style: Appstyle.font17withSemiBold),
      ),
    );
  }
}
