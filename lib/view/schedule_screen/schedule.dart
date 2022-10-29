import 'package:flutter/material.dart';
import 'package:t20_world_cup_app_flutter/utils/data_api.dart';
import 'package:t20_world_cup_app_flutter/widgets/background_image.dart';
import 'package:t20_world_cup_app_flutter/widgets/custom_app_bar.dart';
import 'package:t20_world_cup_app_flutter/widgets/match_widget.dart';
import '../../models/match.dart';


class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(DataApi.getAllMatches(context).toString());
    return Scaffold(
      appBar: CustomAppBar(titileText: 'Schedule',),
      body: BackgroundImage(
          child: FutureBuilder<List<Match>>(
            future: DataApi.getAllMatches(context),
            builder: (BuildContext context , AsyncSnapshot snapshot) {
             if(snapshot.hasData){
               List<Match> matches = snapshot.data;
               return Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 6.0),
                 child: ListView.builder(
                   itemCount: matches.length,
                     itemBuilder: (context ,index){
                     return MatchWedgit(match: matches[index]);
                 }),
               );
             }
             else if(snapshot.hasError){
               return Text('Some Went Wrong');
             }
             return Text('return');
            },
          )
      ),
    );
  }
}
