import 'package:flutter/material.dart';
import 'package:otlop_app/AppStyle.dart';

class clsUserInfo extends StatelessWidget {
  final String TextLab;
  final String hintText;

  const clsUserInfo({required this.TextLab, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TextLab,
            style: Appstyle.font14withSemiBold.copyWith(
              color: Appstyle.MainColor,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Appstyle.MainColor),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
