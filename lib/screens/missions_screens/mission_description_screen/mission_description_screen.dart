
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/mission_cubit.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/mission_selected_cubit.dart';
import 'package:spacex_tracker/utilities/colors.dart';

class MissionDescriptionScreen extends StatefulWidget {
  Missions$Query data;
   MissionDescriptionScreen({Key? key,required this.data}) : super(key: key);

  @override
  State<MissionDescriptionScreen> createState() => _MissionDescriptionScreenState();
}

class _MissionDescriptionScreenState extends State<MissionDescriptionScreen> {


  onBackClicked(){
    context.read<MissionSelectedCubit>().setMissionSelected(false);
  }
  @override
  Widget build(BuildContext context) {
    int index = context.read<MissionCubit>().getMissionIndex();
  //  int index=context.read<MissionDescriptionIndexCubit>().getDescriptionIndex();
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/stars.jpg'),fit: BoxFit.fill)),
      padding: EdgeInsets.only(top: 5.h,left: 3.w,right: 3.w),
      child: Column(
        children: [
          buildBackIcon(),
          buildMissionName(index),
          buildDescriptionText(index)
        ],
      ),
    );
  }

  buildMissionName(index) {
    return Text(widget.data.missions![index]!.name.toString(),
    style: GoogleFonts.abel(
      color: AppColors.lightDescriptionTextColor
    ),
    );
  }

  Container buildDescriptionText(index) {
    return Container(
      padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.purpleAccent,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const[
            BoxShadow(
              color: Colors.grey,
              blurRadius: 3.0,
              blurStyle: BlurStyle.outer,
              spreadRadius: 3.0,
              offset: Offset(3,0)
            )
          ]
        ),
        child: Column(
          children: [

            Text(widget.data.missions![index]!.description.toString(),
              style: GoogleFonts.abel(color: AppColors.lightDescriptionTextColor),),
          ],
        ),

    );
  }

  Row buildBackIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.only(left: 3.w),
          child: IconButton(onPressed: onBackClicked , icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
        ),
      ],
    );
  }
}
