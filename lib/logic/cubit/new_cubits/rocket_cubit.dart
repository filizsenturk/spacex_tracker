
import 'package:flutter_bloc/flutter_bloc.dart';

class RocketCubit extends Cubit<int?> {
  RocketCubit() : super(null);

  setRocketIndex(int index){
    emit(index);
  }

  getRocketIndex(){
    return state;
  }
}
