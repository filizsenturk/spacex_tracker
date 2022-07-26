

import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavIndexCubit extends Cubit<int> {
  BottomNavIndexCubit() : super(0);

  setIndex(int index){
    emit(index);
  }

  getIndex(){
    return state;
  }
}
