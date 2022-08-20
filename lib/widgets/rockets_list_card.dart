
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/generated/l10n.dart';
import 'package:spacex_tracker/local_data/local_helper.dart';

class RocketsListCard extends StatelessWidget {
 final String title;
 final String? isActive;
 final String imageUrl;
 final VoidCallback onTap;
   const RocketsListCard({
    Key? key,
    required this.title,
     this.isActive,
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
        height: 16.h,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.amberAccent,width: 3,style: BorderStyle.solid),
            color: Colors.black12,
            borderRadius: BorderRadius.circular(10)),
        child: buildTitle(),
      ),
    );
  }




  buildTitle() {
    return Center(
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: LocalHelper.getFontSize(15.sp),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

}
