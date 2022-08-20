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
                child: Center(
                    child: Image.network(
                  item,
                  fit: BoxFit.cover,
                  height: 100.h,
                      loadingBuilder: ( context,  child, loadingProgress){
                        if (loadingProgress == null) return child;
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                )),
              ))
          .toList(),
    ));
  }
}
