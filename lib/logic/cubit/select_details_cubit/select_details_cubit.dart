import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectDetailsCubit extends Cubit<String> {
  SelectDetailsCubit() : super("");

  setSelectedRocket(String name){
    print("SetSelectedRocket started and name is $name");
    emit(name);
  }

  getSelectedRocket(){
   return state;
  }

}
