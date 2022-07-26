
import 'package:flutter/material.dart';
import 'package:spacex_tracker/screens/rockets_screen/rockets_screen_body.dart';

class RocketsScreen extends StatelessWidget {
  const RocketsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      color: Colors.black38,
      child: RocketsScreensBody(),
    ));
  }
}
