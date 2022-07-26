
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/generated/l10n.dart';
import 'package:spacex_tracker/local_data/local_helper.dart';

class RocketsListCard extends StatelessWidget {
 final String title;
 final bool isActive;
 final String imageUrl;
 final VoidCallback onTap;
   const RocketsListCard({
    Key? key,
    required this.title,
    required this.isActive,
    required this.imageUrl,
     required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 1.w,right: 1.w,top: 2.w,bottom: 1.w),
        padding: EdgeInsets.only(left: 3.w,right: 3.w,top: 1.w,bottom: 1.w),
        width: 100.w,
        height: 20.h,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black,width: 3,style: BorderStyle.solid),
            color: Colors.white60,
            borderRadius: BorderRadius.circular(10)),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildImage(),
            buildInfo()
          ],
        ),
      ),
    );
  }

  Container buildImage() {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: Image.network(imageUrl),
    );
  }

 Expanded buildInfo() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildTitle(),
          buildActiveText(),
          buildClickText()
        ],
      ),
    );
  }

  buildTitle() {
    return Text(
      title,
      style: GoogleFonts.abel(
        fontSize: LocalHelper.getFontSize(15.sp),
        fontWeight: FontWeight.w600,
      ),
    );
  }

  buildActiveText() {
    return Text(
      isActive==true ? S.current.active :S.current.inactive,
      style: GoogleFonts.abel(
        fontSize: LocalHelper.getFontSize(12.sp),
        fontWeight: FontWeight.w400,
        color: Colors.tealAccent
      ),
    );
  }

  buildClickText() {
    return Text(
      S.current.moreInfo,
      style: GoogleFonts.abel(
          fontSize: LocalHelper.getFontSize(15.sp),
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic,
          color: Colors.brown
      ),
    );
  }
}
