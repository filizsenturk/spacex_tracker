
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter_bloc/graphql_flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/generated/l10n.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';
import 'package:spacex_tracker/helper/provider/graphql_provider.dart';
import 'package:spacex_tracker/logic/bloc/rockets_bloc.dart';
import 'package:spacex_tracker/screens/rockets_screen/rockets_class.dart';

class RocketsScreensBody extends StatefulWidget {
  const RocketsScreensBody({Key? key}) : super(key: key);

  @override
  State<RocketsScreensBody> createState() => _RocketsScreensBodyState();
}

class _RocketsScreensBodyState extends State<RocketsScreensBody> {
  late RocketsBloc rocketsBloc;


  @override
  void initState() {
    rocketsBloc = RocketsBloc(client: client)..run();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return  buildRocketsBuilder();
}

   buildRocketsBuilder() {
    return  Container(
      width: 100.w,
      height: 100.h,
      child: BlocBuilder<RocketsBloc, QueryState<Rockets$Query>>(
          bloc: rocketsBloc,
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
                loaded: RocketsClass(context:context).RocketsCard,
                refetch: RocketsClass(context:context).RocketsCard,
                fetchMore:RocketsClass(context:context).RocketsCard
            );
          }),
    );

  }


}