import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_tracker/constants/strings.dart';
import 'package:spacex_tracker/logic/bloc/rocket_bloc/rocket_bloc.dart';
import 'package:spacex_tracker/logic/cubit/bottom_nav_index_cubit.dart';
import 'package:spacex_tracker/logic/cubit/is_detail_selected_cubit/is_detail_selected_cubit.dart';
import 'package:spacex_tracker/screens/bottom_nav_bar.dart';
import 'package:spacex_tracker/screens/home_screen_body.dart';
import 'package:spacex_tracker/screens/missions_screen/missions_screen.dart';
import 'package:spacex_tracker/screens/rockets_screen/rocket_details_screen/rocket_details_screen.dart';
import 'package:spacex_tracker/screens/rockets_screen/rockets_screen.dart';
import 'package:spacex_tracker/screens/ships_screen/ships_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';
 const  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool  isSelected = context.read<IsDetailSelectedCubit>().getDetailSelected();
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(centerTitle: true,title: Text(Strings.C_SPACEX),),
      body: BlocBuilder<BottomNavIndexCubit, int>(builder: (context, state) {
        int myIndex = context.read<BottomNavIndexCubit>().getIndex();

        if (myIndex == 0) {
          return HomeScreenBody();
        }

        if (myIndex == 1) {
          return MissionsScreen();
        }

        if (myIndex == 2) {
          print(context.read<IsDetailSelectedCubit>().getDetailSelected());
          return  isSelected ==true ? RocketsDetailsScreen(context: context) : RocketsScreen();
        }
        if (myIndex == 3) {
          return ShipsScreen();
        } else {

          return RocketsScreen();
        }

      }),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
