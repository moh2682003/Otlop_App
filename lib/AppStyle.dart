import 'package:flutter/material.dart';

abstract class Appstyle {
  static const TextStyle Font25pxwithSemiBoldweight = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static const TextStyle font14withSemiBold = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.grey,
  );

  static const TextStyle font17withSemiBold = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static Color supColor = Colors.grey;

  static TextStyle MainTitle24WithBold = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  static Color MainColor = Color.fromRGBO(255, 92, 57, 1);


  static const TextStyle font18withbold = TextStyle(fontSize: 18 , fontWeight: FontWeight.w700) ; 
}
