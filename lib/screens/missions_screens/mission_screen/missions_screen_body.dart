
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter_bloc/graphql_flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/generated/l10n.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';
import 'package:spacex_tracker/helper/provider/graphql_provider.dart';
import 'package:spacex_tracker/logic/bloc/missions_bloc.dart';
import 'package:spacex_tracker/screens/missions_screens/missions_class.dart';

class MissionsScreenBody extends StatelessWidget {
   MissionsScreenBody({Key? key}) : super(key: key);
late MissionsBloc missionsBloc;
  @override
  Widget build(BuildContext context) {

    missionsBloc = MissionsBloc(client: client)..run();
    return  buildMissionBuilder(context);
  }

  buildMissionBuilder(context) {
    return  BlocBuilder<MissionsBloc, QueryState<Missions$Query>>(
        bloc: missionsBloc,
        builder: (_,state){

          return state.when(
              initial: () => Container(),
              loading: (_) => Container(height: 25.h, child: Center(child: CircularProgressIndicator())),
              error: (error,__,_){
                log.i(error);
                return Container(
                  child: Center(child: Text(S.current.serverError),),
                );
              },
              loaded: MissionsClass(context: context).MissionsList,
              refetch: MissionsClass(context: context).MissionsList,
              fetchMore:MissionsClass(context: context).MissionsList
          );
        });

  }
}
