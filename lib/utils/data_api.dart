
import 'dart:convert';


import 'package:flutter/cupertino.dart';
import 'package:t20_world_cup_app_flutter/models/team.dart';
import 'package:t20_world_cup_app_flutter/models/venue.dart';
import '../models/history.dart';
import '../models/match.dart';

class DataApi{
  static Future<List<Match>> getAllMatches(BuildContext context) async {

    var matches = <Match>[];
    
    var assetBundle = DefaultAssetBundle.of(context);
    var data = await assetBundle.loadString('assets/data/ttwenty.json');
    var jsonData = json.decode(data);
    var jsonSchedule = jsonData['schedule'];

    for(var jsonMatch in jsonSchedule){
      Match match = Match.formJSON(jsonMatch);
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


  static Future<List<History>> getAllHistory(BuildContext context) async {
    List<History> historyList = [];

    var assetBundle = DefaultAssetBundle.of(context);
    var data = await assetBundle.loadString('assets/data/ttwenty.json');
    var jsonData = jsonDecode(data);
    var jsonHistory = jsonData['history'];

    for(var mapHistory in jsonHistory){
      History history = History.formJSON(mapHistory);
      historyList.add(history);
    }
    return historyList;
  }

  static Future<List<Team>> getAllTeams(BuildContext context) async {
    List<Team> teamList = [];

    var assetBundle = DefaultAssetBundle.of(context);
    var data = await assetBundle.loadString('assets/data/ttwenty.json');
    var jsonData = jsonDecode(data);
    var jsonTeams = jsonData['teams'];

    for(var jsonTeam in jsonTeams){
      Team team = Team.fromJSON(jsonTeam);
      teamList.add(team);
    }
    return teamList;
  }
}