import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/constants/strings.dart';
import 'package:spacex_tracker/logic/bloc/rocket_bloc/rocket_bloc.dart';
import 'package:spacex_tracker/logic/cubit/bottom_nav_index_cubit.dart';
import 'package:spacex_tracker/logic/cubit/is_detail_selected_cubit/is_detail_selected_cubit.dart';
import 'package:spacex_tracker/logic/cubit/theme_cubit/theme_cubit.dart';
import 'package:spacex_tracker/screens/bottom_nav_bar.dart';
import 'package:spacex_tracker/screens/home_screen_body.dart';
import 'package:spacex_tracker/screens/missions_screen/missions_screen.dart';
import 'package:spacex_tracker/screens/rockets_screen/rocket_details_screen/rocket_details_screen.dart';
import 'package:spacex_tracker/screens/rockets_screen/rockets_screen.dart';
import 'package:spacex_tracker/screens/ships_screen/ships_screen.dart';
import 'package:spacex_tracker/utilities/app_theme.dart';

import '../helper/provider/graphql_provider.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';
 const  HomeScreen({Key? key}) : super(key: key);

  changeDarkModeTo({required bool darkActive, required BuildContext context}) async {
    log.i("Toggle Dark mode && Toggle Dark mode to :$darkActive");
    context.read<ThemeCubit>().toggleDarkMode();
  }

  @override
  Widget build(BuildContext context) {

    bool  isSelected = context.read<IsDetailSelectedCubit>().getDetailSelected();
    return Scaffold(
      backgroundColor: Theme.of(context).homeScreenBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarBackgroundColor ,
        centerTitle: true,title: Text(Strings.C_SPACEX),
      actions: [
        buildModeSwitcher(context)

      ],
      ),
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


  Container buildModeSwitcher(context) {
    return Container(
      height: 1.h,
      child: FittedBox(
        fit: BoxFit.fill,
        child: BlocBuilder<ThemeCubit, AppThemeState>(
          builder: (context, state) {
            return CupertinoSwitch(
              activeColor: Colors.yellow,
              trackColor: Colors.pinkAccent,
              value: context.watch<ThemeCubit>().state.theme == AppTheme.darkTheme,
              onChanged: (bool value) {
                log.i("Selected value $value");
                changeDarkModeTo(
                  darkActive: value,context:context
                );
              },
            );
          },
        ),
      ),
    );
  }
}
