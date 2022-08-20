import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/constants/strings.dart';
import 'package:spacex_tracker/logic/cubit/bottom_nav_index_cubit.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/rocket_selected_cubit.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/ship_selected_cubit.dart';
import 'package:spacex_tracker/logic/cubit/ship_selected_cubit.dart';
import 'package:spacex_tracker/screens/bottom_nav_bar.dart';
import 'package:spacex_tracker/screens/home_screen_body.dart';
import 'package:spacex_tracker/screens/missions_screens/mission_screen/missions_screen.dart';
import 'package:spacex_tracker/screens/rockets_screen/rocket_details_screen/rocket_details_screen.dart';
import 'package:spacex_tracker/screens/rockets_screen/rockets_screen.dart';
import 'package:spacex_tracker/screens/ships_screens/ship_details_screen.dart';
import 'package:spacex_tracker/screens/ships_screens/ships_screen/ships_screen.dart';



class HomeScreen extends StatelessWidget {
  static const routeName = '/';
 const  HomeScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    bool isShipSelected = context.read<ShipSelectedCubit>().getShipSelected() ??false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.black,
        centerTitle: true,title: Text(Strings.C_SPACEX),
      ),
      body: Container(
        width: 100.w,
        height: 100.h,

        child: BlocBuilder<BottomNavIndexCubit, int>(builder: (context, state) {
          int myIndex = context.read<BottomNavIndexCubit>().getIndex();

          if (myIndex == 0) {
            return HomeScreenBody();
          }

          if (myIndex == 1) {
            return MissionsScreen();
          }

          if (myIndex == 2) {

            return  RocketsScreen();
          }
          if (myIndex == 3) {
            return ShipsScreen();
          } else {

            return HomeScreenBody();
          }
        }),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
