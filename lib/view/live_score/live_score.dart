import 'package:flutter/material.dart';
import 'package:t20_world_cup_app_flutter/widgets/custom_app_bar.dart';


class LiveScore extends StatelessWidget {
  const LiveScore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(titileText: 'Live Score',),
      body: Column(),
    );
  }
}
