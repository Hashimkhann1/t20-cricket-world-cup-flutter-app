
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:t20_world_cup_app_flutter/models/venue.dart';
import '../models/match.dart';

class DataApi{
  static Future<List<Match>> getAllMatches(BuildContext context) async {

    var matches = <Match>[];
    
    var assetBundle = DefaultAssetBundle.of(context);
    var data = await assetBundle.loadString('assets/data/ttwenty.json');
    var jsonData = json.decode(data);
    var jsonSchedule = jsonData['schedule'];

    for(var jsonMatch in jsonSchedule){
      Match match = Match.formJSOn(jsonMatch);
      matches.add(match);
      // print('>>>>> ${match}');
    }
    
    return matches;

  }


  static Future<List<Venue>> getAllVenues(BuildContext context) async {
     List<Venue> venues = [];
    var assetBundle = DefaultAssetBundle.of(context);
    var data = await assetBundle.loadString('assets/data/ttwenty.json');
    var jsonData = json.decode(data);
    var jsonVenues = jsonData['venues'];

    for(var jsonVenue in jsonVenues){
      Venue venue = Venue.forJSON(jsonVenue);
      venues.add(venue);
    }
    return venues;
  }
}