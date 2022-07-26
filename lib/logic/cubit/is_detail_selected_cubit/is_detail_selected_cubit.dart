

import 'package:flutter_bloc/flutter_bloc.dart';

class IsDetailSelectedCubit extends Cubit<bool> {
  IsDetailSelectedCubit() : super(false);

  setDetailSelected(bool value){
    emit(value);
  }

  getDetailSelected(){
   return state;
  }
}
