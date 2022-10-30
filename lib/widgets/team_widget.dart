import 'package:flutter/material.dart';
import 'package:t20_world_cup_app_flutter/models/team.dart';
import 'package:t20_world_cup_app_flutter/utils/color_resources.dart';
import 'package:t20_world_cup_app_flutter/widgets/app_text.dart';

class TeamWidget extends StatelessWidget {
  final Team team;
  const TeamWidget({Key? key,required this.team}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            ColorResource.pinkColor,
            ColorResource.primaryColor
          ]
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              ClipRRect(borderRadius: BorderRadius.circular(10), child: Image.asset(team.flag.toString(),width: 100,height: 80,fit: BoxFit.cover,)),
              const SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(titile: team.fullName,textFontWeight: FontWeight.bold,textColor: ColorResource.whiteColor,textSize: 20,),
                  const SizedBox(height: 6,),
                  AppText(titile: team.captain,textColor: ColorResource.whiteColor,),
                ],
              )
            ],
          ),
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(team.captainImage.toString()),
          )
        ],
      ),
    );
  }
}
