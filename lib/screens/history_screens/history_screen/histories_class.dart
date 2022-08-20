
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:logger/logger.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/constants/strings.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/history_cubit.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/history_selected_cubit.dart';
import 'package:spacex_tracker/screens/history_screens/history_detail_screen/history_detail_screen.dart';
import 'package:spacex_tracker/utilities/logger/simple_log_printer.dart';
import 'package:spacex_tracker/widgets/rockets_list_card.dart';

class HistoriesClass extends StatelessWidget {
  BuildContext context;
  HistoriesClass({Key? key,required this.context}) : super(key: key);

  Logger log = getLogger();
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget HistoriesCard(
      Histories$Query? data,
      QueryResult? result
      ){
    return BlocBuilder<HistorySelectedCubit,bool>(builder: (context,state){
      return state==true ? HistoryDetailScreen(data:data) : data==null ? Container(): buildNotSelected(data);
    });
  }

  Widget buildCard(Histories$Query data,index) {
    return RocketsListCard(
        title: data.histories![index]!.title.toString(),
        imageUrl: Strings.I_FALCON9,
        onTap:(){
          context.read<HistoryCubit>().setHistoryIndex(index);
          context.read<HistorySelectedCubit>().setHistorySelected(true);
        }
    );
  }

 Container buildNotSelected(data) {
    return Container(
      padding:  EdgeInsets.only(top:2.h),
      child: ListView.builder(
          itemCount: data.histories!.length,
          itemBuilder: (context,index){
            return buildCard(data,index);
          }),
    ) ;
  }
}
