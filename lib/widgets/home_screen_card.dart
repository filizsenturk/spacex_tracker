
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/local_data/local_helper.dart';
import 'package:spacex_tracker/utilities/app_theme.dart';

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
          color: Theme.of(context).homeCardBackgrounColor,
          border: Border.all(color:Theme.of(context).homeCardBorderColor,width: 10),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.pink,
              spreadRadius: 2,
              blurStyle: BlurStyle.outer,
              blurRadius: 5,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
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
