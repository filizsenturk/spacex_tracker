
import 'package:flutter_bloc/flutter_bloc.dart';

class ImgListCubit extends Cubit<List> {
  ImgListCubit() : super([]);

  setImgList(List list){
    emit(list);
  }

  getImgList(){
    return state;
  }
}
