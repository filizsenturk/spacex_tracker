import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter_bloc/graphql_flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/generated/l10n.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';
import 'package:spacex_tracker/helper/provider/graphql_provider.dart';
import 'package:spacex_tracker/logic/bloc/histories_bloc.dart';
import 'package:spacex_tracker/screens/history_screens/history_screen/histories_class.dart';

class HistoryScreen extends StatefulWidget {
   HistoryScreen({Key? key}) : super(key: key);
  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  late HistoriesBloc historiesBloc;

  @override
  void initState() {
    historiesBloc = HistoriesBloc(client: client)..run();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  buildRocketsBuilder();
  }

  buildRocketsBuilder() {
    return  BlocBuilder<HistoriesBloc, QueryState<Histories$Query>>(
        bloc: historiesBloc,
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
              loaded: HistoriesClass(context:context).HistoriesCard,
              refetch: HistoriesClass(context:context).HistoriesCard,
              fetchMore:HistoriesClass(context:context).HistoriesCard,
          );
        });

  }
}