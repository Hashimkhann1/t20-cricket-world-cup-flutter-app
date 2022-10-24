
import 'dart:convert';

import 'package:flutter/cupertino.dart';
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
    }
    
    return matches;

  }
}