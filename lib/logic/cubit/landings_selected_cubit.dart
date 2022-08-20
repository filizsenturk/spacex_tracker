
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingsSelectedCubit extends Cubit<bool> {
  LandingsSelectedCubit() : super(false);

  setSelection(bool value){
    emit(value);
  }

  getSelectionValue(){
    return state;
  }

}
