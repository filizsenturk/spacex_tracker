import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/local_data/local_helper.dart';
import 'package:spacex_tracker/utilities/colors.dart';

class HomeScreenCard extends StatelessWidget {
  final double width;
  final String title;
  final VoidCallback onTap;
  const HomeScreenCard({Key? key,
    required this.width,
    required this.title,
    required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: 15.h,
        decoration: BoxDecoration(
          color: AppColors.lightLandingColor,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(80)),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 5,
              blurStyle: BlurStyle.outer,
              blurRadius: 5,
              offset: Offset(2, -2), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:  EdgeInsets.only(left :2.w),
              child: Text(
                title,
                style: GoogleFonts.poppins(
                  color: AppColors.lightTextColor,
                  fontSize: LocalHelper.getFontSize(16.sp),
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
