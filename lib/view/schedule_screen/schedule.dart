import 'package:flutter/material.dart';
import 'package:t20_world_cup_app_flutter/utils/data_api.dart';
import 'package:t20_world_cup_app_flutter/widgets/background_image.dart';
import 'package:t20_world_cup_app_flutter/widgets/custom_app_bar.dart';
import '../../models/match.dart';


class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(titileText: 'Schedule',),
      body: BackgroundImage(
          child: FutureBuilder<List<Match>>(
            future: DataApi.getAllMatches(context),
            builder: (BuildContext context , AsyncSnapshot snapshot) {
              if(snapshot.hasData){
                List<Match> matches = snapshot.data;
                print(snapshot.data?.length);

                return Text('check');

              }
              else if(snapshot.hasError){
                print(snapshot.error);
                return Center(child: Text('error'));
              }
              return Text('return');
            },
          )
      ),
    );
  }
}
