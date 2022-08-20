
import 'package:flutter/material.dart';
import 'package:spacex_tracker/screens/ships_screens/ships_screen/ships_screen_body.dart';

class ShipsScreen extends StatelessWidget {
  const ShipsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      color: Colors.blue,
      child: Center(child: ShipsScreensBody()),
    ));
  }
}
