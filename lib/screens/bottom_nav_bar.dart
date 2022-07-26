
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_tracker/logic/cubit/bottom_nav_index_cubit.dart';
import 'package:spacex_tracker/utilities/logger/simple_log_printer.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final log = getLogger();
  onHomeClicked(){
    context.read<BottomNavIndexCubit>().setIndex(0);
    log.i("HomeClicked Started");
    log.i( "index is"+ context.read<BottomNavIndexCubit>().getIndex().toString());
  }

  onMissionClicked(){
    context.read<BottomNavIndexCubit>().setIndex(1);
    log.i("onMissionClicked Started");
    log.i( "index is"+ context.read<BottomNavIndexCubit>().getIndex().toString());
  }

  onRocketClicked(){
    context.read<BottomNavIndexCubit>().setIndex(2);
    log.i("onRocketClicked Started");
    log.i( "index is"+ context.read<BottomNavIndexCubit>().getIndex().toString());
  }

  onShipsClicked(){
    context.read<BottomNavIndexCubit>().setIndex(3);
    log.i("onShipsClicked Started");
    log.i( "index is"+ context.read<BottomNavIndexCubit>().getIndex().toString());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        backgroundColor: Colors.greenAccent,
        currentIndex: 0,
        items: [
          buildHomeItem(),
          buildMissionsItem(),
          buildRockets(),
          buildShips(),
        ],
      ),
    );
  }

  BottomNavigationBarItem buildHomeItem() {
    return BottomNavigationBarItem(
        icon: IconButton(
          icon:  Icon(Icons.home),
          color: Colors.black87,
          onPressed: onHomeClicked,),
        label: "",
        tooltip: "");
  }

  BottomNavigationBarItem buildMissionsItem() {
    return BottomNavigationBarItem(
        icon: IconButton(
          icon:  Icon(Icons.mic),
          color: Colors.brown,
          onPressed: onMissionClicked,),
        label: "",
        tooltip: "");
  }

  BottomNavigationBarItem buildRockets() {
    return BottomNavigationBarItem(
        icon: IconButton(
          icon:  Icon(Icons.rocket),
          color: Colors.deepOrange,
          onPressed: onRocketClicked,),
        label: "",
        tooltip: "");
  }

  BottomNavigationBarItem buildShips() {
    return BottomNavigationBarItem(
        icon: IconButton(
          icon:  Icon(Icons.waves),
          color: Colors.blue,
          onPressed: onShipsClicked,),
        label: "",
        tooltip: "");
  }


}
