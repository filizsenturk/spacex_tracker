
import 'package:flutter/material.dart';

class ShipsScreen extends StatelessWidget {
  const ShipsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      color: Colors.blue,
      child: Center(child: Text("Ships")),
    ));
  }
}
