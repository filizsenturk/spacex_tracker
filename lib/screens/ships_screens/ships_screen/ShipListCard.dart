import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/generated/l10n.dart';
import 'package:spacex_tracker/local_data/local_helper.dart';

class ShipListCard extends StatefulWidget {
  final String? imageUrl;
  final String isActive;
  final String model;
  final String buildYear;
  VoidCallback onTapped;
  ShipListCard(
      {Key? key,
      required this.model,
      required this.isActive,
      required this.imageUrl,
      required this.buildYear,
      required this.onTapped})
      : super(key: key);

  @override
  State<ShipListCard> createState() => _ShipListCardState();
}

class _ShipListCardState extends State<ShipListCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTapped,
      child: Container(
        height: 15.h,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.white60,
                  blurRadius: 4.0,
                  spreadRadius: 4.0,
                  offset: Offset(-4, 4)),
            ],
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.only(right: 3.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [buildImage(), buildInfo()],
          ),
        ),
      ),
    );
  }

  buildImage() {
    return Row(
      children: [
        Container(
          width: 35.w,
          height: 15.h,
          decoration:const BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20))),
          child: Container(
            padding: EdgeInsets.only(left: 3.w),
            width: 35.w,
            child: widget.imageUrl == null
                ? Container(
                    width: 10.w,
                    color: Colors.black12,
                  )
                : CachedNetworkImage(imageUrl: widget.imageUrl!,
              placeholder: (context, url) => Container(
                width: 3.w,
                child: const CircularProgressIndicator(),
              ),
              errorWidget: (context,exception,stacktrace){
                return Container();
              },
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 2.w),
          color: Colors.pink,
          width: 2.w,
          height: 15.h,
        ),
        Container(
          margin: EdgeInsets.only(left: 2.w),
          width: 1.w,
          height: 15.h,
          color: Colors.pink,
        ),
      ],
    );
  }

  Column buildInfo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          widget.buildYear,
          style: GoogleFonts.abel(
              fontSize: LocalHelper.getFontSize(16.sp),
              color: Colors.pinkAccent,
              fontWeight: FontWeight.w600),
        ),
        Text(
          widget.isActive=="true" ? S.current.active : S.current.inactive,
          style: GoogleFonts.abel(
              fontSize: LocalHelper.getFontSize(14.sp),
              color: Colors.pink,
              fontWeight: FontWeight.w300),
        ),
        Text(
          widget.model == "null" ? "-" : widget.model,
          style: GoogleFonts.abel(
              fontSize: LocalHelper.getFontSize(16.sp),
              color: Colors.pink,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
