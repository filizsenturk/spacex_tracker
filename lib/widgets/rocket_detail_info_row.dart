
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class DetailInfoRow extends StatelessWidget {
  final String title;
  final String? result;
  const DetailInfoRow({Key? key,required this.title, this.result,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      padding: EdgeInsets.only(left: 3.w,right: 3.w),
      width: 100.w,
      child: Column(

        children: [
          Container(
            height: 10.h,

            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 1.w,),
                  width: 35.w,child: Text(title),),
                Text(": "),
                Expanded(child: Text(" $result",
                 overflow: TextOverflow.fade,))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 3.w,right: 3.w),
            child: Divider(),
          )

        ],
      ) ,
    );
  }
}
