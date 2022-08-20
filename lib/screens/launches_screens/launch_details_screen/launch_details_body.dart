
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/constants/strings.dart';
import 'package:spacex_tracker/generated/l10n.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';
import 'package:spacex_tracker/logic/cubit/home_cubit.dart';
import 'package:spacex_tracker/logic/cubit/imglist_cubit.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/launch_cubit.dart';
import 'package:spacex_tracker/logic/cubit/video_ids_cubit.dart';
import 'package:spacex_tracker/logic/cubit/video_url_cubit.dart';
import 'package:spacex_tracker/screens/home_screen.dart';
import 'package:spacex_tracker/screens/launches_screens/launch_details_screen/carousel_image_slider.dart';
import 'package:spacex_tracker/screens/launches_screens/launch_details_screen/go_gallery_button.dart';
import 'package:spacex_tracker/utilities/app_theme.dart';
import 'package:spacex_tracker/utilities/colors.dart';
import 'package:spacex_tracker/utilities/logger/simple_log_printer.dart';
import 'package:spacex_tracker/widgets/rocket_detail_info_row.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class LaunchDetailsBody extends StatefulWidget {
  Launches$Query data;
   LaunchDetailsBody({Key? key,required this.data}) : super(key: key);

  @override
  State<LaunchDetailsBody> createState() => _LaunchDetailsBodyState();
}

class _LaunchDetailsBodyState extends State<LaunchDetailsBody> {
  Logger log = getLogger();

  onWatchClicked()async{
    log.i("Watch Videos Clicked");
    context.read<VideoUrlCubit>()
        .setVideoUrl(widget.data.launches![context.read<LaunchCubit>().getLaunchIndex()]!
        .links!
        .videoLink.toString());
    var id = YoutubePlayer.convertUrlToId(
      context.read<VideoUrlCubit>().getVideoUrl(),
    );


    log.wtf("var id value is $id");
    context.read<VideoIdsCubit>().setVideoIdLink(id.toString());
    context.read<HomeCubit>().setHomeScreen(Strings.C_WATCH_VIDEOS);
  //  Navigator.of(context).pushNamed(HomeScreen.routeName);
  }

  onGalleryClicked(){
    log.i("Go Galley Clicked");
   context.read<HomeCubit>().setHomeScreen(Strings.C_GO_GALLERY);
  // Navigator.of(context).pushNamed(HomeScreen.routeName);

  }

  onTapped() {
    context.read<HomeCubit>().setHomeScreen(Strings.C_LAUNCHES);
    Navigator.of(context).pushNamed(HomeScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    int index = context.read<LaunchCubit>().getLaunchIndex();
    return Container(
      padding: EdgeInsets.only(top: 1.h),
      width: 100.w,
      height: 100.h,
      child:buildLaunchDetail(context,index)
    );
  }


  Widget buildLaunchDetail(context,index) {
    log.i("buildLaunchDetail started");

    return Container(
      height: 100.h,
      width: 100.w,
      child: Column(
        children: [
          buildSlider(),
          buildListView(index)
        ],
      )
    );

  }

  Row buildBackIcon() {
    return Row(
      children: [
        Container(
            height: 5.h,
            decoration: BoxDecoration(
              color: AppColors.lightLandingColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(child: IconButton(
                onPressed: onTapped,
                icon: Icon(Icons.arrow_back_ios,color: Colors.white,)))),
      ],
    );
  }

  Container buildSlider() {
    return Container(
        color: Colors.black,
        width: 60.w,
        height: 17.h,
        child: CarouselImageSlider(launchFetched: widget.data,
        imgList: context.read<ImgListCubit>().getImgList(),
        ));
  }

  Container buildListView(index) {
    Launches$Query$Launch query =  widget.data.launches![index]!;

    return Container(
      height: 55.60.h,
      width: 100.w,
      child: SingleChildScrollView(
        child: Container(
          height: 55.5.h,
          width: 100.w,
          child: Column(
            children: [
              buildButtonRow(),
              DetailInfoRow(
                  title: S.current.missionName,
                  result: query.missionName.toString()),
              DetailInfoRow(
                  title: S.current.launches,
                  result: query.launchYear.toString()),
              DetailInfoRow(
                  title: S.current.rocketName,
                  result: query.rocket!.rocketName.toString()),
              DetailInfoRow(
                  title: S.current.rocketType,
                  result: query.rocket!.rocketType.toString()),

            ],
          ),
        ),
      ),
    );
  }

  Padding buildButtonRow() {
    return Padding(
      padding:  EdgeInsets.only(left: 4.w,right: 4.w,top: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildBackIcon(),
          GoGalleryButton(text:"Watch Videos",voidCallback:onWatchClicked ,),
          GoGalleryButton(text:"Go Gallery",voidCallback:onGalleryClicked ,),
        ],
      ),
    );
  }
}