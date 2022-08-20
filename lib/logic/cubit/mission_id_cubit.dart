
import 'package:flutter_bloc/flutter_bloc.dart';

class MissionIdCubit extends Cubit<String?> {
  MissionIdCubit() : super(null);

  setMissionId(String ID){
    emit(ID);
  }

  getMissionID(){
    return state;
  }

}
