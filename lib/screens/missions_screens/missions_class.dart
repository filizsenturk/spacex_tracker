import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:logger/logger.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/mission_selected_cubit.dart';
import 'package:spacex_tracker/screens/missions_screens/mission_description_screen/mission_description_screen.dart';
import 'package:spacex_tracker/utilities/logger/simple_log_printer.dart';
import 'package:spacex_tracker/widgets/missions_card.dart';

class MissionsClass extends StatelessWidget {
  BuildContext context;

  MissionsClass({Key? key, required this.context}) : super(key: key);


  Logger log = getLogger();

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget MissionsList(Missions$Query? data,
      QueryResult? result) {
    if (data == null) {
      log.i("MissionsQuery data is null");
      return Container();
    }
    return BlocBuilder<MissionSelectedCubit, bool>(
      builder: (context, state) {
        log.i("Mission Class and in bloc and state is $state" );

        return Container(

            child: state==true ? MissionDescriptionScreen(data: data) : buildMissionList(data)
        );
      },
    );
  }

  Widget buildCard(Missions$Query data, index) {
    log.i("buildCard for Mission List started");
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MissionsCard(
        index: index,
        id: data.missions![index]!.id.toString(),
        name: data.missions![index]!.name.toString(),
      ),
    );
  }

  buildMissionList(data) {
    return Padding(
      padding: EdgeInsets.only(top: 3.h),
      child: ListView.builder(
          itemCount: data.missions!.length,
          itemBuilder: (context, index) {
            return buildCard(data, index);
          }),
    );
  }
}
