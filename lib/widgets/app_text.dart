import 'package:flutter/material.dart';

class AppText extends StatelessWidget {

  AppText({Key? key,required this.titile,this.textColor,this.textFontWeight,this.textSize}) : super(key: key,);
  String? titile;
  Color? textColor;
  FontWeight? textFontWeight;
  double? textSize;

  @override
  Widget build(BuildContext context) {
    return Text(titile.toString(),style: TextStyle(
      color: textColor,
      fontSize: textSize,
      fontWeight: textFontWeight,
    ),);
  }
}
