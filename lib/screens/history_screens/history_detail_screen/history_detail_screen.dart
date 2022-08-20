import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/generated/l10n.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';
import 'package:spacex_tracker/local_data/local_helper.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/history_cubit.dart';

class HistoryDetailScreen extends StatefulWidget {
  Histories$Query? data;

  HistoryDetailScreen({Key? key, this.data}) : super(key: key);

  @override
  State<HistoryDetailScreen> createState() => _HistoryDetailScreenState();
}

class _HistoryDetailScreenState extends State<HistoryDetailScreen> {

  @override
  Widget build(BuildContext context) {
    int index = context.read<HistoryCubit>().getHistoryIndex();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<HistoryCubit>().getHistoryIndex() == widget.data!.histories!.length-1  ? null :
          context.read<HistoryCubit>().setHistoryIndex(
            context.read<HistoryCubit>().getHistoryIndex() + 1);},
        child: Icon(Icons.arrow_forward_ios,),
      ),
      body: Container(
        width: 100.w,
        height: 100.h,
        color: Colors.white,
        child: widget.data == null ?
        CircularProgressIndicator()
            : buildDetails(),

      ),
    );
  }

  buildDetails() {

    return BlocBuilder<HistoryCubit, int?>(
      builder: (context, state) {
        Histories$Query$History? query = widget.data!.histories![state!];
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildHistoryName(query, state),
            buildYear(query, state),
            buildMissionName(query, state),
            buildLaunchSucces(query, state),
            buildRocketName(query, state),
            buildHistoryDetails(query, state),
          ],
        );
      },
    );
  }

  Padding buildHistoryName(Histories$Query$History? query, index) {
    return Padding(
      padding: EdgeInsets.only(top: 4.h, bottom: 3.h),
      child: Text(
        query!.title.toString(),
        style: GoogleFonts.poppins(
          fontSize: LocalHelper.getFontSize(16.sp),
          fontWeight: FontWeight.w700,
        ),
      textAlign: TextAlign.center,
      ),
    );
  }

  buildYear(Histories$Query$History? query, index) {
    return query!.flight == null ? Container() : Text(
      "-- " + query.flight!.launchYear.toString() + " --",
      style: GoogleFonts.poppins(
        fontSize: LocalHelper.getFontSize(14.sp),
        fontWeight: FontWeight.w500,
      ),
    );
  }

  buildMissionName(Histories$Query$History? query, index) {
    return query!.flight == null ? Container() : Padding(
      padding: EdgeInsets.only(top: 2.h, bottom: 2.h),
      child: Text(
        query.flight!.missionName.toString(),
        style: GoogleFonts.poppins(
          fontSize: LocalHelper.getFontSize(14.sp),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  buildLaunchSucces(Histories$Query$History? query, index) {
    return query!.flight == null ? Container() : Text(
      query.flight!.launchSuccess.toString() == "true"
          ? S.current.succes : query.flight!.launchSuccess.toString() == "false"
          ? S.current.failed : "-",
      style: GoogleFonts.poppins(
        fontSize: LocalHelper.getFontSize(13.sp),
        fontWeight: FontWeight.w600,
      ),
    );
  }

  buildRocketName(Histories$Query$History? query, index) {
    return query!.flight == null ? Container() : Padding(
      padding: EdgeInsets.only(top: 2.h, bottom: 2.h),
      child: Text(
        query.flight!.rocket!.rocketName.toString(),
        style: GoogleFonts.poppins(
          fontSize: LocalHelper.getFontSize(13.sp),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  buildHistoryDetails(Histories$Query$History? query, index) {
    return Container(
      padding: EdgeInsets.only(left: 3.w, right: 3.w),
      width: 100.w,
      height: 30.h,
      child: SingleChildScrollView(
        child: Text(
          query!.details.toString(),
          style: GoogleFonts.poppins(
            fontSize: LocalHelper.getFontSize(14.sp),
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
