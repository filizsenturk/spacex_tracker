

import 'package:flutter_bloc/flutter_bloc.dart';

class HistorySelectedCubit extends Cubit<bool> {
  HistorySelectedCubit() : super(false);

  setHistorySelected(bool value){
    emit(value);
  }
  getHistorySelected(){
    return state;
  }
}
