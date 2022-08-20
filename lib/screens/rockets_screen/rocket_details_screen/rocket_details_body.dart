import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/generated/l10n.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';
import 'package:spacex_tracker/logic/cubit/bottom_nav_index_cubit.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/rocket_cubit.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/rocket_selected_cubit.dart';
import 'package:spacex_tracker/screens/home_screen.dart';
import 'package:spacex_tracker/utilities/logger/simple_log_printer.dart';
import 'package:spacex_tracker/widgets/rocket_detail_info_row.dart';

class RocketsDetailsBody extends StatefulWidget {
  Rockets$Query data;
  RocketsDetailsBody({Key? key, required this.data}) : super(key: key);

  @override
  State<RocketsDetailsBody> createState() => _RocketsDetailsBodyState();
}

class _RocketsDetailsBodyState extends State<RocketsDetailsBody> {
  Logger log = getLogger();

  onTapped() {
    context.read<RocketSelectedCubit>().setRocketSelected(false);
    context.read<BottomNavIndexCubit>().setIndex(2);
    Navigator.of(context).pushNamed(HomeScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    int index = context.read<RocketCubit>().getRocketIndex();
    return Container(
      padding: EdgeInsets.only(top: 0.5.h),
      width: 100.w,
      height: 100.h,
      child: SingleChildScrollView(
        child: BlocBuilder<RocketCubit, int?>(builder: (context, state) {
          return buildRocketDetail(state, index);
        }),
      ),
    );
  }

  Widget buildRocketDetail(context, index) {
    log.i("buildRocketDetail started");
    Rockets$Query$Rocket query = widget.data.rockets![index]!;
    return Column(
      children: [
        buildImage(),
        buildBackIcon(),
        DetailInfoRow(title: S.current.rocketName, result: query.name),
        DetailInfoRow(
            title: S.current.active,
            result: query.active == null
                ? "  -  "
                : query.active.toString() == "true"
                    ? S.current.yes
                    : S.current.no),
        DetailInfoRow(
            title: S.current.boosters,
            result: query.boosters.toString() == "null"
                ? "  -  "
                : query.boosters.toString()),
        DetailInfoRow(
            title: S.current.successRate,
            result: query.successRatePct.toString() == null
                ? S.current.unknown
                : " % ${query.successRatePct.toString()}"),
        DetailInfoRow(
            title: S.current.engine,
            result: query.secondStage!.engines.toString() == "null"
                ? "  -"
                : query.secondStage!.engines.toString()),
        DetailInfoRow(
            title: S.current.costPerLunch,
            result: query.costPerLaunch.toString() == "null"
                ? "  -"
                : query.costPerLaunch.toString()),
        DetailInfoRow(
            title: S.current.landingLegsMaterial,
            result: query.landingLegs == null
                ? S.current.unknown
                : query.landingLegs!.material == null
                    ? "  -"
                    : query.landingLegs!.material.toString()),
        DetailInfoRow(
            title: S.current.landingLegsNumber,
            result: query.landingLegs == null
                ? "  -"
                : query.landingLegs!.number.toString()),
        DetailInfoRow(
            title: S.current.firstFlight,
            result: query.firstFlight.toString() == "null"
                ? "  -"
                : query.firstFlight.toString().substring(0,10)),
        DetailInfoRow(
            title: S.current.reUseable,
            result: query.firstStage == null
                ? "-"
                : query.firstStage!.reusable.toString() == "true"
                    ? S.current.yes
                    : S.current.no),
      ],
    );
  }

  Padding buildBackIcon() {
    return Padding(
      padding: EdgeInsets.only(left: 3.w, bottom: 0.5.h),
      child: Row(
        children: [
          IconButton(
              onPressed: onTapped,
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black26,
              )),
        ],
      ),
    );
  }

  Container buildImage() {
    return Container(
        width: 100.w,
        child: Image.asset(
          "assets/images/hangar.jpg",
        ));
  }
}
