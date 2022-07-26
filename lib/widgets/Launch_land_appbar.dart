
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/local_data/local_helper.dart';

class Launch_Land_Appbar extends StatelessWidget {
  final String title;
  const Launch_Land_Appbar({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 10.h,
      alignment: Alignment.center,
      child: Text(
        title,
        style: GoogleFonts.abel(
        fontSize: LocalHelper.getFontSize(15.sp),
        fontWeight: FontWeight.w700,
      ),
      ),
    );
  }
}
