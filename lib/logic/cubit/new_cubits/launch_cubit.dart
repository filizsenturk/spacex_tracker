
import 'package:flutter_bloc/flutter_bloc.dart';

class LaunchCubit extends Cubit<int?> {
  LaunchCubit() : super(null);

  setLaunchCubit(int index){
    emit(index);
  }

  getLaunchIndex(){
    return state;
  }
}
