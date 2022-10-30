import 'package:flutter/material.dart';
import 'package:t20_world_cup_app_flutter/utils/data_api.dart';
import 'package:t20_world_cup_app_flutter/widgets/background_image.dart';
import 'package:t20_world_cup_app_flutter/widgets/custom_app_bar.dart';
import 'package:t20_world_cup_app_flutter/widgets/team_widget.dart';


class Team extends StatelessWidget {
  const Team({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(titileText: 'Team',),
      body: BackgroundImage(
        padding: EdgeInsets.all(10),
        child: FutureBuilder(
          future: DataApi.getAllTeams(context),
            builder: (context , snapshot) {
            if(snapshot.hasData){
              var teams = snapshot.data;
              return ListView.builder(
                itemCount: teams?.length,
                  itemBuilder: (context , index) {
                  return TeamWidget(team: teams![index]);
              });
            }
            else if(snapshot.hasError){
              print(snapshot.hasError.toString());
              return Text('error');
            }
          return Text('return');
        }),
      ),
    );
  }
}


