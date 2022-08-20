
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<String?> {
  HomeCubit() : super(null);

  setHomeScreen(String value){
    emit(value);
  }

  getHomeScreen(){
    return state;
  }
}
