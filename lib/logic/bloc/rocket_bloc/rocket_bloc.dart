import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';
import 'package:spacex_tracker/logic/bloc/rocket_bloc/rocket_detail_info.dart';

part 'rocket_events.dart';
part 'rocket_state.dart';


class RocketBloc extends Bloc<RocketEvents, RocketState> {
  RocketDetailInfo rocketDetailInfo;
  RocketBloc({required this.rocketDetailInfo}) : super(RocketLoading()) {
    on<RocketEvents>((event, emit) async {

      if(event is RocketSelected){
        emit(RocketLoading());
        print("rocketId is $rocketId");

        Map<String,dynamic>? rocketsDetail= await rocketDetailInfo.fetchRocketInfo();
        print("rocketsDetail is  $rocketsDetail");
        emit(RocketFetchedSuccessfully(rocketMap: rocketsDetail));
        print("rocket Fetched");
      }

      if(event is RocketNotSelected){
        emit(NoRocketDetailNeeded());
      }

    }
    );
  }
}
