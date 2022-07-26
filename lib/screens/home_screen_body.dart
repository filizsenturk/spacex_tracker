
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/generated/l10n.dart';
import 'package:spacex_tracker/utilities/app_theme.dart';
import 'package:spacex_tracker/utilities/logger/simple_log_printer.dart';
import 'package:spacex_tracker/widgets/home_screen_card.dart';

class HomeScreenBody extends StatelessWidget {
   HomeScreenBody({Key? key}) : super(key: key);

  Logger log =getLogger();
  onLaunchesTapped(){
    log.i("onLaunchesTapped Started");

  }

  onLandingsTapped(){
    log.i("onLandingsTapped Started");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Theme.of(context).homeScreenBackgroundColor,
    body: Center(
        child: Container(
          padding: EdgeInsets.only(left: 5.w,right: 5.w,top: 5.h),
          width: 100.w,
          height: 60.h,
          child: Column(
            children: [
              buildExplanation(),
              buildLaunches(),
              buildLandings(),

            ],
          ),
        )
    ),);
  }

  buildExplanation() {
    return Text("It will be added an explanation here");
  }

  buildLaunches() {
    return Padding(
        padding: EdgeInsets.only(top:3.h,bottom:3.h),
        child: HomeScreenCard(title: S.current.launches, onTap: onLaunchesTapped));
  }

  buildLandings() {
    return HomeScreenCard(title: S.current.landings, onTap: onLandingsTapped);
  }
}
