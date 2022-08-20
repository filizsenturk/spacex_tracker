/*

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter_bloc/graphql_flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/generated/l10n.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';
import 'package:spacex_tracker/helper/provider/graphql_provider.dart';
import 'package:spacex_tracker/logic/bloc/landings_bloc.dart';



class LandingBody extends StatefulWidget {
  const LandingBody({Key? key}) : super(key: key);

  @override
  State<LandingBody> createState() => _LandingBodyState();
}

class _LandingBodyState extends State<LandingBody> {
  late LandingsBloc landingsBloc;


  @override
  void initState() {
    landingsBloc = LandingsBloc(client: client)..run();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return  buildRocketsBuilder();
  }

  buildRocketsBuilder() {
    return  BlocBuilder<LandingsBloc, QueryState<Landings$Query>>(
        bloc: landingsBloc,
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


              //todo landings de tam olarak ne olacak karar veremedim landpads e
              // bak ayrıca history de ekleyebilirim ana sayfaya bunu dene iniş
              // kalkış kaldırabilirsin yada history içine alabilirsin.
        //      loaded: RocketsClass(context:context).RocketsCard,
          //    refetch: RocketsClass(context:context).RocketsCard,
            //  fetchMore:RocketsClass(context:context).RocketsCard
          );
        });

  }
}

 */