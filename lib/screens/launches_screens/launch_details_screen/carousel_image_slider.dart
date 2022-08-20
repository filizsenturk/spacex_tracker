import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';

class CarouselImageSlider extends StatefulWidget {
  Launches$Query launchFetched;
  List imgList;
  CarouselImageSlider(
      {Key? key, required this.launchFetched, required this.imgList})
      : super(key: key);

  @override
  State<CarouselImageSlider> createState() => _CarouselImageSliderState();
}

class _CarouselImageSliderState extends State<CarouselImageSlider> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.imgList.forEach((imageUrl) {
        precacheImage(NetworkImage(imageUrl), context);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 40.w,
        height: 20.h,
        child: Container(
            child: CarouselSlider.builder(
            itemCount: widget.imgList.length,
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              scrollDirection: Axis.vertical),
             itemBuilder: (context, index, realIdx) {
                return Container(
                 child: Center(
                    child: CachedNetworkImage(
                      imageUrl: widget.imgList[index],
                     errorWidget: (context,_,__){return Container();},
                     fit: BoxFit.cover,
                      placeholder: (context, url) =>  Container(
                          width: 5.w,
                          child: CircularProgressIndicator()),

              )),
            );
          },
        )));
  }
}
