import 'package:flutter/material.dart';
import 'package:otlop_app/AppStyle.dart';


class clsHeaderMessage extends StatelessWidget {
  
  final String mainText ; 
  final String supText ; 

  

  const clsHeaderMessage({required this.mainText , required this.supText}) ; 
  
    @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(mainText , style: Appstyle.Font25pxwithSemiBoldweight
          )
          ,Text(supText , style: Appstyle.font14withSemiBold, )
        ]
           
        ),
      
    );
  }
}