

import 'package:flutter/material.dart';
import 'package:t20_world_cup_app_flutter/utils/color_resources.dart';
import 'package:t20_world_cup_app_flutter/widgets/app_text.dart';

import '../models/history.dart';


class HistoryWidget extends StatelessWidget {
  final History history;
  HistoryWidget({Key? key , required this.history}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(history.runnerUpFlag);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              CountryWidget(country: history.winner, countryFlag: history.winnerFlag),
              CircleAvatar(
                radius: 25,
                backgroundColor: ColorResource.primaryColor,
                child: AppText(titile: 'VS',textColor: ColorResource.whiteColor,),
              ),
              CountryWidget(country: history.runnerUp, countryFlag: history.runnerUpFlag),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AppText(titile: 'Winner' , textColor: ColorResource.primaryColor,textFontWeight: FontWeight.bold,),
              AppText(titile: 'Runner Up' , textColor: ColorResource.primaryColor,textFontWeight: FontWeight.bold,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AppText(titile: history.winnerScore.toString() , textColor: ColorResource.primaryColor,textFontWeight: FontWeight.bold,),
              AppText(titile: history.runnerUpScore.toString() , textColor: ColorResource.primaryColor,textFontWeight: FontWeight.bold,),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(history.winnerCaptain.toString(),width: 100,height: 150,fit: BoxFit.cover,),
              Column(
                children: [
                  AppText(titile: history.year,textColor: ColorResource.primaryColor,textFontWeight: FontWeight.bold,),
                  Image.asset('assets/images/trophy.png',width: 70,height: 100,fit: BoxFit.fill,),
                  AppText(titile: 'Hosted By',textColor: ColorResource.primaryColor,textFontWeight: FontWeight.bold,),
                  AppText(titile: history.host.toString(),textColor: ColorResource.primaryColor,textFontWeight: FontWeight.bold,),

                ],
              ),
              Image.asset(history.runnerUpCaptain.toString(),width: 100,height: 150,fit: BoxFit.cover,)
            ],
          ),
          const SizedBox(height: 20,)
        ],
      ),
    );
  }
}

class CountryWidget extends StatelessWidget {
  final String? country;
  final String? countryFlag;
  const CountryWidget({Key? key,required this.country,required this.countryFlag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [
              ColorResource.pinkColor,
              ColorResource.lightPurpleColor
            ]
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/flags/${countryFlag}'),
            ),
            const SizedBox(width: 10,),
            AppText(titile: country.toString(),textColor: ColorResource.whiteColor,textFontWeight: FontWeight.bold,)
          ],
        ),
      ),
    );
  }
}

