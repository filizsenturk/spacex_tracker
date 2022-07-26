
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RocketDetailInfoRow extends StatelessWidget {
  final String title;
  final String result;
  const RocketDetailInfoRow({Key? key,required this.title,required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 3.w,right: 3.w,bottom: 1.h),
      width: 100.w,
      height: 8.h,
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(bottom: 1.h),
            child: Row(
              children: [
                Container(width: 35.w,child: Text(title),),
                Text(": $result")
              ],
            ),
          ),
          Divider()
        ],
      ) ,
    );
  }
}
