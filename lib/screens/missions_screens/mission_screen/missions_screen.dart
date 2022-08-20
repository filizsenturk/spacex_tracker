
import 'package:flutter/material.dart';
import 'package:spacex_tracker/screens/missions_screens/mission_screen/missions_screen_body.dart';
import 'package:spacex_tracker/utilities/app_theme.dart';

class MissionsScreen extends StatelessWidget {
  const MissionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/stars.jpg'),fit: BoxFit.fill)),

      child: MissionsScreenBody(),
    ));
  }
}
