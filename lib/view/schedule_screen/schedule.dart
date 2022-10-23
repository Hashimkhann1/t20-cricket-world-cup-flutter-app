import 'package:flutter/material.dart';
import 'package:t20_world_cup_app_flutter/widgets/background_image.dart';
import 'package:t20_world_cup_app_flutter/widgets/custom_app_bar.dart';


class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(titileText: 'Schedule',),
      body: BackgroundImage(child: Column(),),
    );
  }
}
