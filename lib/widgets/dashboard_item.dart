import 'package:flutter/material.dart';

import '../utils/color_resources.dart';
import 'app_text.dart';


class DashboardItem extends StatelessWidget {
  String? dashBoardTitle;
  String? imagePath;
  VoidCallback? onTap;
  DashboardItem({Key? key,required this.dashBoardTitle,this.imagePath,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10
              )
            ],
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            color: ColorResource.whiteColor
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(imagePath.toString(),
                width: 100,
                height: 100,
              ),
              AppText(titile: dashBoardTitle.toString(),textSize: 20.0,textFontWeight: FontWeight.w600,)
            ],
          ),
        ),
      ),
    );
  }
}
