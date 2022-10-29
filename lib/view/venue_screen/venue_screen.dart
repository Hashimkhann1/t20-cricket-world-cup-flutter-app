import 'package:flutter/material.dart';
import 'package:t20_world_cup_app_flutter/utils/data_api.dart';
// import 'package:t20_world_cup_app_flutter/widgets/app_text.dart';
import 'package:t20_world_cup_app_flutter/widgets/background_image.dart';
import 'package:t20_world_cup_app_flutter/widgets/custom_app_bar.dart';
import 'package:t20_world_cup_app_flutter/widgets/venue_widget.dart';

class Venue extends StatelessWidget {
  const Venue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(titileText: 'Venues',),
      body: BackgroundImage(
        padding: const EdgeInsets.all(8),
        child: FutureBuilder(
          future: DataApi.getAllVenues(context),
          builder: (BuildContext context , AsyncSnapshot snapshot) {
            if(snapshot.hasData){
              List venues = snapshot.data;

              return ListView.builder(
                itemCount: venues.length,
                  itemBuilder: (context , index){
                 return VenueWidget(venue: venues[index],);
              });
            }
            else if(snapshot.hasError){
              // print(snapshot.error);
              const Text('error');
            }
            return const Text('Return');
          },
        ),
      ),
    );
  }
}
