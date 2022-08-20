import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/helper/provider/graphql_provider.dart';
import 'package:spacex_tracker/local_data/local_helper.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/mission_cubit.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/mission_selected_cubit.dart';
import 'package:spacex_tracker/utilities/appcolors.dart';
import 'package:spacex_tracker/widgets/my_text_button.dart';
import '../generated/l10n.dart';

class MissionsCard extends StatefulWidget {
  final int index;
  final String name;
  final String id;

  MissionsCard({
    Key? key,
    required this.name,
    required this.index,
    required this.id,
  }) : super(key: key);

  @override
  State<MissionsCard> createState() => _MissionsCardState();
}

class _MissionsCardState extends State<MissionsCard> {
  onDescriptionClicked() {
    // context.read<MissionDescriptionIndexCubit>().setDescriptionIndex(widget.index);
  }

  onTapped() {
    log.e("Mission Card Tapped");
    context.read<MissionCubit>().setMissionIndex(widget.index);
    context.read<MissionSelectedCubit>().setMissionSelected(true);
    log.i("mission index is ${context.read<MissionCubit>().getMissionIndex()}");
  }

  onDetailClicked() {
    // context.read<MissionCubit>().setMissionState(Strings.C_PAYLOAD);
    // context.read<MissionIdCubit>().setMissionId(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        padding: EdgeInsets.only(top: 2.h, left: 3.w, right: 3.w),
        width: 100.w,
        height: 20.h,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              width: 3,
              style: BorderStyle.solid,
              color: AppColors.lightHomeCardBorderColor),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 2,
              blurStyle: BlurStyle.outer,
              blurRadius: 5,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [buildName(context), buildTextButtonRow(context)],
        ),
      ),
    );
  }

  Text buildName(context) {
    return Text(
      widget.name,
      style: GoogleFonts.abel(
        fontSize: LocalHelper.getFontSize(14.sp),
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Row buildTextButtonRow(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        MyTextButton(
            btnText: S.current.description, onTap: onDescriptionClicked),
        MyTextButton(btnText: S.current.details, onTap: onDetailClicked)
      ],
    );
  }
}
