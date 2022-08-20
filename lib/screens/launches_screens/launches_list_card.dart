import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';
import 'package:spacex_tracker/local_data/local_helper.dart';
import 'package:spacex_tracker/logic/cubit/imglist_cubit.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/launch_cubit.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/launch_selected_cubit.dart';
import 'package:spacex_tracker/logic/cubit/video_ids_cubit.dart';
import 'package:spacex_tracker/utilities/colors.dart';

class LaunchesListCard extends StatelessWidget {
  Launches$Query data;
  String date;
  String missionName;
  String rocket;
  int index;
   LaunchesListCard({Key? key,
   required this.data,
   required this.date,
   required this.missionName,
   required this.rocket,
   required this.index,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: (){
            List<String> imgList = [];
            for (int i = 0; i <
                data.launches![index]!.links!.flickrImages!.length; i++) {
              imgList.add(
                  data.launches![index]!.links!.flickrImages![i].toString());
            }
            context.read<ImgListCubit>().setImgList(imgList);
            context.read<ImgListCubit>().getImgList();
            context.read<VideoIdsCubit>().setVideoIdLink(
                data.launches![index]!.links!.videoLink.toString());
            context.read<LaunchSelectedCubit>().setLaunchSelected(true);
            context.read<LaunchCubit>().setLaunchCubit(index);
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 2.h),
            width: 60.w,
            height: 15.h,
            decoration:const  BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                  bottomRight: Radius.circular(100)),
              color: Colors.white
            ),
            child: Container(
              padding: EdgeInsets.only(
                left: 3.w,
                top: 2.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildText(date,context),
                  SizedBox(height: 0.5.h,),
                  buildText(missionName,context),
                  SizedBox(height: 0.5.h,),
                  buildText(rocket,context)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

 Text buildText(String text,context){
    return Text(
      text,
    style: GoogleFonts.abel(
      fontSize: LocalHelper.getFontSize(12.sp),
      fontWeight: FontWeight.w600,
      color: AppColors.lightLandingColor),
    );
  }
}
