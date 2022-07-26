
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/local_data/local_helper.dart';

class HomeScreenCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
 const HomeScreenCard({Key? key,required this.title, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 3.w),
        width: 100.w,
        height: 20.h,
        decoration: BoxDecoration(
          border: Border.all(color:Colors.black,width: 10),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,
            style: GoogleFonts.abel(
              fontSize: LocalHelper.getFontSize(20.sp),
              fontWeight: FontWeight.w800,
            ),
            )
          ],
        ) ,
      ),
    );
  }
}
