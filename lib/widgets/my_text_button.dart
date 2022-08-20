
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spacex_tracker/local_data/local_helper.dart';

class MyTextButton extends StatelessWidget {
  final String btnText;
   VoidCallback onTap;
   MyTextButton({Key? key,
    required this.btnText,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: onTap ,
        child: Text(btnText,
        style: GoogleFonts.abel(
            fontSize: LocalHelper.getFontSize(12),
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.italic
        ),
        ) ,
      ),
    );
  }
}
