import 'package:flutter/material.dart';
import 'package:t20_world_cup_app_flutter/utils/color_resources.dart';
import 'package:t20_world_cup_app_flutter/widgets/app_text.dart';

import '../models/venue.dart';


class VenueWidget extends StatelessWidget {
  final Venue? venue;
  const VenueWidget({Key? key , this.venue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      margin: const EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        color: ColorResource.pinkColor,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(color: Colors.grey,blurRadius: 5)
        ]
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 280,
            decoration: BoxDecoration(
              color: ColorResource.whiteColor,
              borderRadius: BorderRadius.circular(30)
            ),
            child: Stack(
              children: [
                Positioned.fill(child: ClipRRect(borderRadius: const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)), child: Image.asset(venue!.image.toString(),fit: BoxFit.cover,))),
                Positioned(
                  left: MediaQuery.of(context).size.width / 2 - 85,
                    child: Container(
                      alignment: Alignment.center,
                      width: 150,
                      height: 36,
                      decoration: const BoxDecoration(
                        color: ColorResource.primaryColor,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12)),
                        boxShadow: [
                          BoxShadow(color: Colors.grey,blurRadius: 10)
                        ]
                      ),
                      child: AppText(titile: venue?.country.toString(),textColor: ColorResource.whiteColor,),
                    ))
              ],
            ),
          ),
          const SizedBox(height: 8,),
          AppText(titile: venue?.stadium.toString(),textColor: ColorResource.whiteColor,textFontWeight: FontWeight.bold,textSize: 18,),
          const SizedBox(height: 8,),
          AppText(titile: venue?.city.toString(),textColor: ColorResource.whiteColor,textFontWeight: FontWeight.bold,textSize: 18,),
        ],
      ),
    );
  }
}
