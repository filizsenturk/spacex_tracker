
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/constants/strings.dart';
import 'package:spacex_tracker/logic/cubit/home_cubit.dart';
import 'package:spacex_tracker/screens/home_screen.dart';
import 'package:spacex_tracker/screens/launches_screens/launches_screen/lauches_body.dart';
import 'package:spacex_tracker/utilities/app_theme.dart';
import 'package:spacex_tracker/utilities/colors.dart';

class LaunchesScreen extends StatefulWidget {
  const LaunchesScreen({Key? key}) : super(key: key);

  @override
  State<LaunchesScreen> createState() => _LaunchesScreenState();
}

class _LaunchesScreenState extends State<LaunchesScreen> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: AppColors.lightLandingColor,
        width:100.w,
        child: LaunchesBody());
  }
}
