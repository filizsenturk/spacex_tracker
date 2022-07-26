
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:logger/logger.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/constants/strings.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';
import 'package:spacex_tracker/logic/bloc/rocket_bloc/rocket_bloc.dart';
import 'package:spacex_tracker/logic/bloc/rocket_bloc/rocket_detail_info.dart';
import 'package:spacex_tracker/logic/cubit/is_detail_selected_cubit/is_detail_selected_cubit.dart';
import 'package:spacex_tracker/logic/cubit/select_details_cubit/select_details_cubit.dart';
import 'package:spacex_tracker/screens/home_screen.dart';
import 'package:spacex_tracker/screens/rockets_screen/rocket_details_screen/rocket_details_screen.dart';
import 'package:spacex_tracker/utilities/logger/simple_log_printer.dart';
import 'package:spacex_tracker/widgets/rockets_list_card.dart';

class RocketsClass extends StatelessWidget {
  BuildContext context;
   RocketsClass({Key? key,required this.context}) : super(key: key);

   onTap(id){


   }

  Logger log = getLogger();
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget RocketsCard(
      Rockets$Query? data,
      QueryResult? result
      ){
 //   bool isSelected = context.read<IsDetailSelectedCubit>().getDetailSelected()??false;
 //   String id=context.read<SelectDetailsCubit>().getSelectedRocket()??"";
    if(data==null){
      log.i("RocketsQuery data is null");
      return Container();
    }
    return Container(
      padding:  EdgeInsets.only(top:2.h),
      child: ListView.builder(
        itemCount: data.rockets!.length,
          itemBuilder: (context,index){
          return buildCard(data,index);
          }),
    ) ;
  }

  Widget buildCard(Rockets$Query data,index) {
   rocketId = context.read<SelectDetailsCubit>().getSelectedRocket()??"";

    return RocketsListCard(
      title: data.rockets![index]!.name.toString(),
      isActive: data.rockets![index]!.active.toString()=="true" ? true : false ,
      imageUrl: Strings.I_FALCON9,
      onTap:(){
        context.read<SelectDetailsCubit>().setSelectedRocket(data.rockets![index]!.id.toString());
   rocketId = context.read<SelectDetailsCubit>().getSelectedRocket();
   print("rocketId is $rocketId");

        context.read<IsDetailSelectedCubit>().setDetailSelected(true);
        context.read<RocketBloc>()..add(RocketSelected())..onEvent(RocketSelected());
        Navigator.of(context).pushNamed(HomeScreen.routeName);
        print("context.read<IsDetailSelectedCubit>() value is ${context.read<IsDetailSelectedCubit>().getDetailSelected()}");
      }
      //onTap(data.rockets![index]!.id.toString()),
    );
  }
}
