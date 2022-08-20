
import 'package:flutter_bloc/flutter_bloc.dart';

class MissionDescriptionIndexCubit extends Cubit<int?> {
  MissionDescriptionIndexCubit() : super(null);

  setDescriptionIndex(int index){
    emit(index);
  }

  getDescriptionIndex(){
    return state;
  }
}
