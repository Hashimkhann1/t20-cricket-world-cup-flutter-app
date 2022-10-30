import 'package:flutter/material.dart';
import 'package:t20_world_cup_app_flutter/models/history.dart';
import 'package:t20_world_cup_app_flutter/utils/data_api.dart';
import 'package:t20_world_cup_app_flutter/widgets/background_image.dart';
import 'package:t20_world_cup_app_flutter/widgets/custom_app_bar.dart';
import 'package:t20_world_cup_app_flutter/widgets/history_widget.dart';


class History_Screen extends StatelessWidget {
  const History_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(titileText: 'History',),
      body: BackgroundImage(
        child: FutureBuilder(
          future: DataApi.getAllHistory(context),
          builder: (BuildContext context , AsyncSnapshot snapshot){
            if(snapshot.hasData){

              List<History> historyList = snapshot.data;
              return ListView.builder(
                itemCount: historyList.length,
                  itemBuilder: (context , index) {
                return HistoryWidget(history: historyList[index]);
              });
            }
            else if(snapshot.hasError){
              print(snapshot.error);
              return Text('Error');
            }
          return Text('return');
        },),
      ),
    );
  }
}
