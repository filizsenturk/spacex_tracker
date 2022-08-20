
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_tracker/constants/strings.dart';
import 'package:spacex_tracker/logic/cubit/home_cubit.dart';
import 'package:spacex_tracker/screens/home_screen.dart';
import 'package:spacex_tracker/screens/landing_screens/landings_screen/landings_body.dart';

class LandingsScreen extends StatefulWidget {
  const LandingsScreen({Key? key}) : super(key: key);

  @override
  State<LandingsScreen> createState() => _LandingsScreenState();
}

class _LandingsScreenState extends State<LandingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            IconButton(color: Colors.pink,icon: Icon(Icons.arrow_back_ios),onPressed: (){
              context.read<HomeCubit>().setHomeScreen(Strings.C_MISSION);
              Navigator.of(context).pushNamed(HomeScreen.routeName);
            },),
            //LandingBody()
          ],
        ),
      ),
    );
  }
}
