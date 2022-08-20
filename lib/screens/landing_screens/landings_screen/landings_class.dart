
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:logger/logger.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/constants/strings.dart';
import 'package:spacex_tracker/generated/l10n.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';
import 'package:spacex_tracker/utilities/logger/simple_log_printer.dart';
import 'package:spacex_tracker/widgets/rockets_list_card.dart';

class LandingsClass extends StatelessWidget {
  BuildContext context;
  LandingsClass({Key? key,required this.context}) : super(key: key);


  Logger log = getLogger();
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget LandingsCard(
      Landings$Query? data,
      QueryResult? result
      ){
    if(data==null){
      log.i("LAndingsQuery data is null");
      return Container();
    }
    return Container(
      padding:  EdgeInsets.only(top:2.h),
      child: Container()
      /*ListView.builder(
          itemCount: data.launchNext.length,
          itemBuilder: (context,index){
            return buildCard(data,index);
          }),

       */
    ) ;
  }

  Widget buildCard(Rockets$Query data,index) {
    //rocketId = context.read<SelectRocketDetailsCubit>().getSelectedRocket()??"";

    return RocketsListCard(
        title: data.rockets![index]!.name.toString(),
        isActive: data.rockets![index]!.active.toString()=="true" ? S.current.trueValue : S.current.falseValue ,
        imageUrl: Strings.I_FALCON9,
        onTap:(){
        //  context.read<SelectRocketDetailsCubit>().setSelectedRocket(data.rockets![index]!.id.toString());
         // rocketId = context.read<SelectRocketDetailsCubit>().getSelectedRocket();
        //  print("rocketId is $rocketId");

       //   context.read<IsDetailSelectedCubit>().setDetailSelected(true);
         // context.read<RocketBloc>()..add(RocketSelected())..onEvent(RocketSelected());
         // Navigator.of(context).pushNamed(HomeScreen.routeName);
          //print("context.read<IsDetailSelectedCubit>() value is ${context.read<IsDetailSelectedCubit>().getDetailSelected()}");
        }
      //onTap(data.rockets![index]!.id.toString()),
    );
  }
}
