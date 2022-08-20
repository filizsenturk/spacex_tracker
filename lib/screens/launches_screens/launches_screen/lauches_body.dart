
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter_bloc/graphql_flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/generated/l10n.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';
import 'package:spacex_tracker/helper/provider/graphql_provider.dart';
import 'package:spacex_tracker/logic/bloc/launches_bloc.dart';
import 'package:spacex_tracker/screens/launches_screens/launches_class.dart';

class LaunchesBody extends StatefulWidget {
  const LaunchesBody({Key? key}) : super(key: key);

  @override
  State<LaunchesBody> createState() => _LaunchesBodyState();
}

class _LaunchesBodyState extends State<LaunchesBody> {
  late LaunchesBloc launchesBloc;


  @override
  void initState() {
    launchesBloc = LaunchesBloc(client: client)..run();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return  buildLaunchesBuilder();
  }

  buildLaunchesBuilder() {
    return  BlocBuilder<LaunchesBloc, QueryState<Launches$Query>>(
        bloc: launchesBloc,
        builder: (_,state){

          return state.when(
              initial: () => Container(),
              loading: (_) => Container(height: 25.h, child: Center(child: CircularProgressIndicator())),
              error: (error,__,_){
                log.i(error);
                return Container(
                  child: Center(child: Text(S.of(context).serverError),),
                );
              },
              loaded: LaunchesClass(context:context).LaunchesCard,
              refetch: LaunchesClass(context:context).LaunchesCard,
              fetchMore:LaunchesClass(context:context).LaunchesCard,
          );
        });

  }
}