
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/utilities/app_theme.dart';
import 'package:spacex_tracker/utilities/colors.dart';

class GoGalleryButton extends StatefulWidget {
   String text;
   VoidCallback voidCallback;
   GoGalleryButton({Key? key,
   required this.text,
   required this.voidCallback}) : super(key: key);

  @override
  State<GoGalleryButton> createState() => _GoGalleryButtonState();
}

class _GoGalleryButtonState extends State<GoGalleryButton> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35.w,
      height: 5.h,
      decoration: BoxDecoration(
        color: AppColors.lightLandingColor,
        borderRadius: BorderRadius.circular(100)
      ),
      child: InkWell(
        onTap: widget.voidCallback,
        child: Center(
          child: Text(
            widget.text,
            style: GoogleFonts.poppins(
              color: Colors.white,
            ),
          ),
        ),
      ),

    );
  }
}
