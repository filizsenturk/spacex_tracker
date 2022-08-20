
import 'package:flutter_bloc/flutter_bloc.dart';

class MissionCubit extends Cubit<int?> {
  MissionCubit() : super(null);

  setMissionIndex(int index){
    emit(index);
  }

  getMissionIndex(){
    return state;
  }
}
