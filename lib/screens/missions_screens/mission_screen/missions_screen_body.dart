
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter_bloc/graphql_flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/generated/l10n.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';
import 'package:spacex_tracker/helper/provider/graphql_provider.dart';
import 'package:spacex_tracker/logic/bloc/missions_bloc.dart';
import 'package:spacex_tracker/logic/cubit/bottom_nav_index_cubit.dart';
import 'package:spacex_tracker/screens/home_screen.dart';
import 'package:spacex_tracker/screens/missions_screens/missions_class.dart';
import 'package:spacex_tracker/utilities/colors.dart';

class MissionsScreenBody extends StatefulWidget {
   MissionsScreenBody({Key? key}) : super(key: key);

  @override
  State<MissionsScreenBody> createState() => _MissionsScreenBodyState();
}

class _MissionsScreenBodyState extends State<MissionsScreenBody> {
late MissionsBloc missionsBloc;

onErrorShown(){
  context.read<BottomNavIndexCubit>().setIndex(0);
}

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
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Center(
                        child: Text(S.current.serverError,
                          style: GoogleFonts.poppins(color: Colors.amberAccent),),),
                    ),
                    Center(
                      child: IconButton(
                        icon: Icon(Icons.home,color: AppColors.HomeButtonColor,),
                        onPressed: onErrorShown,
                      ),
                    )
                  ],
                );
              },
              loaded: MissionsClass(context: context).MissionsList,
              refetch: MissionsClass(context: context).MissionsList,
              fetchMore:MissionsClass(context: context).MissionsList
          );
        });

  }
}
