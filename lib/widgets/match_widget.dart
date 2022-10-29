import 'package:flutter/material.dart';
import 'package:t20_world_cup_app_flutter/utils/color_resources.dart';
import 'package:t20_world_cup_app_flutter/utils/helper.dart';
import 'package:t20_world_cup_app_flutter/widgets/app_text.dart';
import '../models/match.dart';


class MatchWedgit extends StatelessWidget {
  final Match match;
  MatchWedgit({required this.match});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.only(top: 5, bottom: 9),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        color: ColorResource.lightPurpleColor,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            RoundFlag(flag: match.flagOne,),
                            SizedBox(width: 5,),
                            AppText(titile: match.teamOne.toString(),textColor: ColorResource.whiteColor,)
                          ],
                        ),
                        SizedBox( child: Center(child: AppText(titile: 'VS',textColor: ColorResource.whiteColor,)),width: 35.0, height: 20,),
                        Row(
                          children: [
                            RoundFlag(flag: match.flagTwo,),
                            SizedBox(width: 5,),
                            AppText(titile: match.teamTwo.toString(),textColor: ColorResource.whiteColor,)
                          ],
                        ),
                      ],
                    ),
                    
              )),
              Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        color: ColorResource.pinkColor,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(titile: Helper.getData(match.date.toString()),textColor: ColorResource.whiteColor,textSize: 20.0,textFontWeight: FontWeight.w600,),
                        AppText(titile: Helper.getGMTTime(match.date.toString()),textColor: ColorResource.whiteColor,),
                        AppText(titile: Helper.getLocalTime(match.date.toString()),textColor: ColorResource.whiteColor,),
                        AppText(titile: match.venue.toString(),textColor: ColorResource.whiteColor,)
                      ],
                    ),
                  )
              )
            ],
          ),
          Image.asset('assets/images/player_icon.png',width: 50,height: 50,color: ColorResource.whiteColor,)
        ],
      ),
    );
  }
}



class RoundFlag extends StatelessWidget {
  final String? flag;
  RoundFlag({this.flag});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: ColorResource.whiteColor,width: 2)
      ),
      child: ClipOval(child: Image.asset('assets/flags/$flag',fit: BoxFit.cover,)),
    );
  }
}
