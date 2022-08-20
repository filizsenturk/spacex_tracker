import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:logger/logger.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/constants/strings.dart';
import 'package:spacex_tracker/generated/l10n.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/rocket_cubit.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/rocket_selected_cubit.dart';
import 'package:spacex_tracker/screens/home_screen.dart';
import 'package:spacex_tracker/screens/rockets_screen/rocket_details_screen/rocket_details_body.dart';
import 'package:spacex_tracker/screens/rockets_screen/rocket_details_screen/rocket_details_screen.dart';
import 'package:spacex_tracker/utilities/logger/simple_log_printer.dart';
import 'package:spacex_tracker/widgets/rockets_list_card.dart';

class RocketsClass extends StatelessWidget {
  BuildContext context;
  RocketsClass({Key? key, required this.context}) : super(key: key);

  Logger log = getLogger();
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget RocketsCard(Rockets$Query? data, QueryResult? result) {
    return data == null
        ? const CircularProgressIndicator()
        : BlocBuilder<RocketSelectedCubit, bool>(builder: (context, state) {
            return state == true
                ? RocketsDetailsBody(
                    data: data,
                  )
                : buildList(data);
          });
  }

  Widget buildCard(Rockets$Query data, index) {
    return RocketsListCard(
        title: data.rockets![index]!.name.toString(),
        isActive: data.rockets![index]!.active.toString() == "true"
            ? S.current.trueValue
            : S.current.falseValue,
        imageUrl: Strings.I_FALCON9,
        onTap: () {
          context.read<RocketCubit>().setRocketIndex(index);
          context.read<RocketSelectedCubit>().setRocketSelected(true);
          Navigator.of(context).pushNamed(HomeScreen.routeName);
        });
  }

  Container buildList(data) {
    return Container(
      height: 100.h,
      width: 100.w,
      child: Row(
        children: [
          buildImage(),
          Expanded(
            child: Container(
              height: 100.h,
              padding: EdgeInsets.only(top:3.h),
              alignment: Alignment.center,
              child: ListView.builder(
                  itemCount: data.rockets!.length,
                  itemBuilder: (context, index) {
                    return buildCard(data, index);
                  }),
            ),
          ),
        ],
      ),
    );
  }
  Container buildImage() {
    return Container(
      height: 100.h,
      child: Image.asset('assets/images/half_launch.jpg'),
    );
  }
}
