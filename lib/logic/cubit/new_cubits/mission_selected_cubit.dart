
import 'package:flutter_bloc/flutter_bloc.dart';

class MissionSelectedCubit extends Cubit<bool> {
  MissionSelectedCubit() : super(false);

  setMissionSelected(bool value){
    emit(value);
  }

  getMissionSelected(){
    return state;
  }
}
