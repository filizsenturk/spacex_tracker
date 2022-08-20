import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:logger/logger.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/ship_cubit.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/ship_selected_cubit.dart';
import 'package:spacex_tracker/logic/cubit/ship_id_cubit.dart';
import 'package:spacex_tracker/logic/cubit/ship_selected_cubit.dart';
import 'package:spacex_tracker/screens/home_screen.dart';
import 'package:spacex_tracker/screens/ships_screens/ship_details_screen.dart';
import 'package:spacex_tracker/screens/ships_screens/ships_screen/ShipListCard.dart';
import 'package:spacex_tracker/utilities/logger/simple_log_printer.dart';

class ShipsClass extends StatelessWidget {
  BuildContext context;

  ShipsClass({Key? key, required this.context}) : super(key: key);


  Logger log = getLogger();

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget ShipsCard(Ships$Query? data,
      QueryResult? result) {
    if (data == null) {
      log.i("ShipsQuery data is null");
      return Container();
    }
    return BlocBuilder<ShipSelectedCubit, bool>(
      builder: (context, state) {
        return state== true ? ShipDetailsScreen(data: data):
          Container(
          padding: EdgeInsets.only(top: 2.h),
          child: ListView.builder(
              itemCount: data.ships!.length,
              itemBuilder: (context, index) {
                return buildCard(data, index);
              }),
        );
      },
    );
  }

  Widget buildCard(Ships$Query data, index) {
    return ShipListCard(
      model: data.ships![index]!.model.toString(),
      isActive: data.ships![index]!.active.toString(),
      imageUrl: data.ships![index]!.image.toString(),
      buildYear: data.ships![index]!.yearBuilt.toString(),
      onTapped: () {
        context.read<ShipCubit>().setShipCubit(index);
        context.read<ShipSelectedCubit>().setShipSelected(true);
      },
    );
  }
}
