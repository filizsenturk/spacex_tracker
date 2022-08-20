import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:logger/logger.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/launch_selected_cubit.dart';
import 'package:spacex_tracker/screens/launches_screens/launch_details_screen/launch_details_body.dart';
import 'package:spacex_tracker/screens/launches_screens/launches_list_card.dart';
import 'package:spacex_tracker/utilities/logger/simple_log_printer.dart';

class LaunchesClass extends StatelessWidget {
  BuildContext context;
  LaunchesClass({Key? key, required this.context}) : super(key: key);
  Logger log = getLogger();

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget LaunchesCard(Launches$Query? data,
      QueryResult? result) {
    if (data == null) {
      log.i("LaunchesQuery data is null");
      return Container();
    }
    return BlocBuilder<LaunchSelectedCubit, bool>(
      builder: (context, state) {
        return state==true ? LaunchDetailsBody(data: data) : buildGalleryOrLaunchList(data);
      },
    );
  }

  Widget buildCard(Launches$Query data, index) {
    /*  List MyDates = [];
  //  rocketId = context.read<SelectRocketDetailsCubit>().getSelectedRocket()??"";
for(int i=0;i<data.launches!.length;i++){
  DateFormat format = DateFormat("yyyy-MM-dd");
  MyDates.add(format.parse(data.launches![i]!.launchDateLocal!.toString()));
}
MyDates.sort((a,b) => a.compareTo(b));
    return Text(MyDates.toString(),style: TextStyle(color: Colors.white),);
   */
    return LaunchesListCard(
      date: data.launches![index]!.launchYear.toString(),
      missionName: data.launches![index]!.missionName.toString(),
      rocket: data.launches![index]!.rocket!.rocketName.toString(),
      index: index,
      data: data,
    );
  }

  Container buildImage() {
    return Container(
      height: 80.h,
      child: Image.asset("assets/images/launch3.jpg"),
    );
  }

  Container buildListView(data) {
    return Container(
      width: 60.w,
      child: ListView.builder(
          itemCount: data.launches!.length,
          itemBuilder: (context, index) {
            return buildCard(data, index);
          }),
    );
  }

  buildGalleryOrLaunchList(data) {
    //todo buraya Gallery screen yada launch list gelecek bunun için cubit oluştur ve bloc builder ekle buraya:.
    //home screen de state oluşturdum onu kaldır.
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildImage(),
        buildListView(data)
      ],
    );
  }
}
