
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter_bloc/graphql_flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/generated/l10n.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';
import 'package:spacex_tracker/helper/provider/graphql_provider.dart';
import 'package:spacex_tracker/logic/bloc/ships_bloc.dart';
import 'package:spacex_tracker/screens/ships_screens/ships_screen/ships_class.dart';

class ShipsScreensBody extends StatefulWidget {
  const ShipsScreensBody({Key? key}) : super(key: key);

  @override
  State<ShipsScreensBody> createState() => _ShipsScreensBodyState();
}

class _ShipsScreensBodyState extends State<ShipsScreensBody> {
  late ShipsBloc shipsBloc;


  @override
  void initState() {
    shipsBloc = ShipsBloc(client: client)..run();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return  buildShipsBuilder();
  }

  buildShipsBuilder() {
    return  BlocBuilder<ShipsBloc, QueryState<Ships$Query>>(
        bloc: shipsBloc,
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
              loaded: ShipsClass(context:context).ShipsCard,
              refetch: ShipsClass(context:context).ShipsCard,
              fetchMore:ShipsClass(context:context).ShipsCard,
          );
        });

  }
}