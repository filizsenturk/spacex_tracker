import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/generated/l10n.dart';
import 'package:spacex_tracker/logic/bloc/rocket_bloc/rocket_bloc.dart';
import 'package:spacex_tracker/logic/cubit/bottom_nav_index_cubit.dart';
import 'package:spacex_tracker/logic/cubit/is_detail_selected_cubit/is_detail_selected_cubit.dart';
import 'package:spacex_tracker/screens/home_screen.dart';
import 'package:spacex_tracker/utilities/logger/simple_log_printer.dart';
import 'package:spacex_tracker/widgets/rocket_detail_info_row.dart';

class RocketsDetailsScreen extends StatelessWidget {
  final BuildContext context;
  RocketsDetailsScreen({Key? key, required this.context}) : super(key: key);
  Logger log = getLogger();

  onTapped() {
    context.read<IsDetailSelectedCubit>().setDetailSelected(false);
    context.read<BottomNavIndexCubit>().setIndex(0);
    Navigator.of(context).pushNamed(HomeScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 10.h),
        width: 100.w,
        height: 100.h,
        child: SingleChildScrollView(
          child:
              BlocBuilder<RocketBloc, RocketState>(builder: (context, state) {
            print("state is $state");
            if (state == RocketLoading) {
              return buildLoadingRocket();
            }
            if (state is RocketError) {
              return buildErrorWithLoading();
            } else if (state is RocketFetchedSuccessfully) {
              return buildRocketDetail(state, context);
            }
            return Container();
          }),
        ),
      ),
    );
  }

  Widget buildLoadingRocket() {
    log.i("buildLoadingRocket started");
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget buildErrorWithLoading() {
    log.i("buildErrorWithLoading started");
    return Center(
      child: Text("Houston we have a problem!!"),
    );
  }

  Widget buildRocketDetail(RocketFetchedSuccessfully rocketFetched, context) {
    log.i("buildRocketDetail started");

    return Column(
      children: [
        RocketDetailInfoRow(
            title: S.current.rocketName,
            result: rocketFetched.rocketMap!['name']),
        RocketDetailInfoRow(
            title: S.current.active,
            result: rocketFetched.rocketMap!['active'].toString()),
        RocketDetailInfoRow(
            title: S.current.boosters,
            result: rocketFetched.rocketMap!['boosters'].toString()),
        RocketDetailInfoRow(
            title: S.current.successRate,
            result: rocketFetched.rocketMap!['success_rate_pct'].toString()),
        RocketDetailInfoRow(
            title: S.current.engine,
            result:
                rocketFetched.rocketMap!['second_stage']['engines'].toString()),
        RocketDetailInfoRow(
            title: S.current.costPerLunch,
            result: rocketFetched.rocketMap!['cost_per_launch'].toString()),
        RocketDetailInfoRow(
            title: S.current.landingLegsMaterial,
            result: rocketFetched.rocketMap!['landing_legs']['material']
                .toString()),
        RocketDetailInfoRow(
            title: S.current.landingLegsNumber,
            result:
                rocketFetched.rocketMap!['landing_legs']['number'].toString()),
        RocketDetailInfoRow(
            title: S.current.firstFlight,
            result: rocketFetched.rocketMap!['first_flight'].toString()),
        RocketDetailInfoRow(
            title: S.current.reUseable,
            result:
                rocketFetched.rocketMap!['first_stage']['reusable'].toString()),
        IconButton(onPressed: onTapped, icon: Icon(Icons.home)),
      ],
    );
  }
}
