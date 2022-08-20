import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/generated/l10n.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';
import 'package:spacex_tracker/helper/provider/graphql_provider.dart';
import 'package:spacex_tracker/local_data/local_helper.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/ship_cubit.dart';
import 'package:spacex_tracker/widgets/rocket_detail_info_row.dart';

class ShipDetailsScreen extends StatefulWidget {
  Ships$Query data;
  ShipDetailsScreen({Key? key, required this.data}) : super(key: key);

  @override
  State<ShipDetailsScreen> createState() => _ShipDetailsScreenState();
}

class _ShipDetailsScreenState extends State<ShipDetailsScreen> {
  List missionNames = [];

  @override
  Widget build(BuildContext context) {
    int index = context.read<ShipCubit>().getShipCubit();
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 2.h),
        width: 100.w,
        height: 100.h,
        child: SingleChildScrollView(
          child: BlocBuilder<ShipCubit, int?>(builder: (context, state) {
            return buildShipDetail(index);
          }),
        ),
      ),
    );
  }

  Widget buildShipDetail(index) {
    log.i("buildRocketDetail started");
    Ships$Query$Ship query = widget.data.ships![index]!;

    return Column(
      children: [
        Container(
          child: Text(
            query.name?.toString() ?? "",
            style: GoogleFonts.poppins(
                fontSize: LocalHelper.getFontSize(12.sp),
                fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 2.h, top: 1.h),
          width: 100.w,
          child: CachedNetworkImage(
            imageUrl: widget.data.ships![index]!.image.toString(),
            placeholder: (context, url) =>
                Container(width: 3.w, child: const CircularProgressIndicator()),
            errorWidget: (context, exception, stacktrace) {
              return Container();
            },
          ),
        ),
        DetailInfoRow(
            title: S.current.active,
            result: query.active.toString() == "true"
                ? S.current.yes
                : S.current.no),
        DetailInfoRow(
            title: S.current.shipModel,
            result: query.model.toString() == "null"
                ? "  -"
                : query.model.toString()),
        DetailInfoRow(
            title: S.current.buildYear,
            result: query.yearBuilt.toString() == "null"
                ? "  -"
                : query.yearBuilt.toString()),
        DetailInfoRow(
            title: S.current.roles,
            result: buildRoles(query)),
        DetailInfoRow(
            title: S.current.usedForMission, result: buildMissionNames(query)),
        DetailInfoRow(title: S.current.type, result: query.type.toString()),
        DetailInfoRow(
            title: S.current.succesfulLandings,
            result: query.successfulLandings.toString()=="null"?"  -  ":query.successfulLandings.toString()),
      ],
    );
  }

  buildMissionNames(query) {
    for (int i = 0; i < query.missions.length; i++) {
      query.missions[i] == null
          ? null
          : missionNames.contains(query.missions[i].name.toString())
              ? null
              : missionNames.add(query.missions[i].name.toString());
    }
    return missionNames == null
        ? "  -"
        : missionNames
            .toString()
            .replaceAll('[', '')
            .replaceAll(']', '')
            .replaceAll(',', ',\n');
  }

  buildRoles(Ships$Query$Ship query) {
    return query.roles.toString() == "null"
        ? "  -"
        : query.roles.toString().replaceAll('[', '')
        .replaceAll(']', '')
        .replaceAll(',', ',\n');
  }
}
