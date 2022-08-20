import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/constants/strings.dart';
import 'package:spacex_tracker/generated/l10n.dart';
import 'package:spacex_tracker/local_data/local_helper.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/history_selected_cubit.dart';
import 'package:spacex_tracker/logic/cubit/home_cubit.dart';
import 'package:spacex_tracker/logic/cubit/imglist_cubit.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/launch_selected_cubit.dart';
import 'package:spacex_tracker/logic/cubit/video_ids_cubit.dart';
import 'package:spacex_tracker/screens/history_screens/history_screen/history_screen.dart';
import 'package:spacex_tracker/screens/home_screen.dart';
import 'package:spacex_tracker/screens/landing_screens/landings_screen/landings_screen.dart';
import 'package:spacex_tracker/screens/launches_screens/launch_details_screen/gallery_full_screen.dart';
import 'package:spacex_tracker/screens/launches_screens/launch_details_screen/watch_videos_screen.dart';
import 'package:spacex_tracker/screens/launches_screens/launches_screen/launches_screen.dart';
import 'package:spacex_tracker/utilities/colors.dart';
import 'package:spacex_tracker/utilities/logger/simple_log_printer.dart';
import 'package:spacex_tracker/widgets/home_screen_card.dart';

class HomeScreenBody extends StatefulWidget {
   HomeScreenBody({Key? key}) : super(key: key);

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  Logger log = getLogger();

  onLaunchesTapped(){
    log.i("onLaunchesTapped Started");
   context.read<HomeCubit>().setHomeScreen(Strings.C_LAUNCHES);
   context.read<LaunchSelectedCubit>().setLaunchSelected(false);
   Navigator.of(context).pushNamed(HomeScreen.routeName);
  }

  onHistoryClicked(){
    log.i("onHistoryClicked Started");
    context.read<HomeCubit>().setHomeScreen(Strings.C_HISTORY);
    context.read<HistorySelectedCubit>().setHistorySelected(false);
  }

  onGalleryClicked(){
    log.i("onGalleryClicked Started" );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  AppColors.lightHomeScreenBackgroundColor,
    body: Container(
      decoration:const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/stars.jpg'),fit: BoxFit.fill)),
      width: 100.w,
      height: 100.h,
      child: BlocBuilder<HomeCubit,String?>(builder: (context,state){
        log.i("Mission Cubit state ${HomeCubit().state}");
        return  state==Strings.C_LANDINGS
            ? LandingsScreen()
            : state==Strings.C_LAUNCHES
            ? LaunchesScreen()
            : state==Strings.C_GO_GALLERY
            ? GalleryFullScreen(imgList: context.read<ImgListCubit>().getImgList())
            : state==Strings.C_WATCH_VIDEOS
            ? WatchVideosScreen(ids:[context.read<VideoIdsCubit>().getVideoIdLink()] ,)
            : state == Strings.C_HISTORY
            ? HistoryScreen()
            : buildColumn();
      })
    ),);
  }

   Container buildExplanation() {
    return Container(
        height: 9.5.h,
        width: 95.w,
        alignment: Alignment.center,
        child: Text("You can explore SpaceX missions and details ",
        style: GoogleFonts.poppins(
            color: AppColors.lightTextColor,
            fontSize: LocalHelper.getFontSize(12.sp)),));
  }

   Padding buildLaunches() {
    return Padding(
        padding: EdgeInsets.only(top:2.5.h,bottom:5.h),
        child: HomeScreenCard(
            title: S.current.launches,
            onTap: onLaunchesTapped,
            width: 75.w,
        ));
  }

  HomeScreenCard buildHistory(){
    return HomeScreenCard(
        title: S.current.spacexHistory,
        onTap: onHistoryClicked,
        width: 90.w,
    );
  }
  Padding buildGallery() {
    return Padding(
      padding: EdgeInsets.only(top:3.h,bottom:3.h),
      child: HomeScreenCard(
          title: S.current.gallery,
          onTap: onGalleryClicked,
          width: 50.w,
      ),
    );
  }

  Container buildColumn() {
    return  Container(
      child: Row(
        children: [
          Container(
            width: 1.w,
            height: 100.h,
            color: AppColors.lightLandingColor,
          ),
          Container(
            margin: EdgeInsets.only(left: 0.5.w,right: 1.w),
            width: 1.w,
            height: 100.h,
            color: AppColors.lightLandingColor,
          ),
          Container(
            padding: EdgeInsets.only(bottom: 5.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment:CrossAxisAlignment.start ,
              children: [
                buildExplanation(),
                buildGallery(),
                buildLaunches(),
                buildHistory(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
