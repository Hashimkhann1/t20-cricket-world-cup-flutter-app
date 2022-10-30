import 'package:flutter/material.dart';
import 'package:t20_world_cup_app_flutter/utils/color_resources.dart';
import 'package:t20_world_cup_app_flutter/view/highlights/highlights.dart';
import 'package:t20_world_cup_app_flutter/view/history_screen/history.dart';
import 'package:t20_world_cup_app_flutter/view/live_score/live_score.dart';
import 'package:t20_world_cup_app_flutter/view/schedule_screen/schedule.dart';
import 'package:t20_world_cup_app_flutter/view/team_screen/team.dart';
import 'package:t20_world_cup_app_flutter/view/venue_screen/venue_screen.dart';
import 'package:t20_world_cup_app_flutter/widgets/app_text.dart';
import 'package:t20_world_cup_app_flutter/widgets/background_image.dart';
import 'package:t20_world_cup_app_flutter/widgets/custom_app_bar.dart';
import 'package:t20_world_cup_app_flutter/widgets/dashboard_item.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          titileText: 'T20 World Cup',
        ),
        body: BackgroundImage(
          padding: const EdgeInsets.all(20.0),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
            children: [
              DashboardItem(
                dashBoardTitle: 'Schedule',
                imagePath: 'assets/dashboard/schedule.png',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Schedule()));
                },
              ),
              DashboardItem(
                dashBoardTitle: 'Venues',
                imagePath: 'assets/dashboard/venues.png',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Venue()));
                },
              ),
              DashboardItem(
                dashBoardTitle: 'History',
                imagePath: 'assets/dashboard/history.png',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => History_Screen()));
                },
              ),
              DashboardItem(
                dashBoardTitle: 'Teams',
                imagePath: 'assets/dashboard/teams.png',
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Team()));
                },
              ),
              DashboardItem(
                dashBoardTitle: 'Live Score',
                imagePath: 'assets/dashboard/live_score.png',
                onTap: () async {
                  const url = 'https://www.espncricinfo.com/series/icc-men-s-t20-world-cup-2022-23-1298134?ex_cid=google_cpc:search:brand:t20wc2022&gclid=Cj0KCQjwwfiaBhC7ARIsAGvcPe4wJXcFxuWpVBd1y0V86sylZ9rXEm7SH-V7O_X5Nylnu7qIk4fCe2UaAkdgEALw_wcB';
                  await canLaunchUrl(Uri.parse(url)) ? await launchUrl(Uri.parse(url)) :throw 'Could not lunch $url' ;
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => LiveScore()));
                },
              ),
              DashboardItem(
                dashBoardTitle: 'Highlights',
                imagePath: 'assets/dashboard/highlights.png',
                onTap: () async {
                  const url = 'https://www.youtube.com/c/ICC/featured';
                  await canLaunchUrl(Uri.parse(url)) ? await launchUrl(Uri.parse(url)) :throw 'Could not lunch $url' ;
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Highlights()));
                },
              ),
            ],
          ),
        ));
  }
}
