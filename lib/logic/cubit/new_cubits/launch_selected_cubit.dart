
import 'package:flutter_bloc/flutter_bloc.dart';

class LaunchSelectedCubit extends Cubit<bool> {
  LaunchSelectedCubit() : super(false);

  setLaunchSelected(bool value){
    emit(value);
  }

  getLaunhSelected(){
    return state;
  }
}
