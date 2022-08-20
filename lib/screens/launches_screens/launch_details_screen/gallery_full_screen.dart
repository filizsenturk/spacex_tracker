import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class GalleryFullScreen extends StatelessWidget {
  final List imgList;

  const GalleryFullScreen({Key? key, required this.imgList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        height: 100.h,
        viewportFraction: 1.0,
        enlargeCenterPage: true,
        // autoPlay: false,
      ),
      items: imgList
          .map((item) => Container(
        height: 100.h,
                child: Center(
                    child: CachedNetworkImage(
                  imageUrl:  item,
                  fit: BoxFit.cover,
                    placeholder: (context, url) => Container(
                        width:3.w,child: CircularProgressIndicator()),
                      errorWidget: (context,_,__){return Container();},
                )),
              ))
          .toList(),
    ));
  }
}
