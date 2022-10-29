import 'package:flutter/material.dart';
import 'package:t20_world_cup_app_flutter/utils/color_resources.dart';
import 'package:t20_world_cup_app_flutter/view/home_screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'T20 World Cup',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ColorResource.primaryColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: ColorResource.primaryColor
        )
      ),
      home: Home(),
    );
  }
}

