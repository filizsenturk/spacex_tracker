
import 'package:flutter_bloc/flutter_bloc.dart';

class RocketSelectedCubit extends Cubit<bool> {
  RocketSelectedCubit() : super(false);

  setRocketSelected(bool value){
    emit(value);
  }

  getRocketValue(){
    return state;
  }
}
