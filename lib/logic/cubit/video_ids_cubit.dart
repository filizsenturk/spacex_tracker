
import 'package:flutter_bloc/flutter_bloc.dart';

class VideoIdsCubit extends Cubit<String?> {
  VideoIdsCubit() : super(null);

  setVideoIdLink(String link){
    emit(link);
  }

  getVideoIdLink(){
    return state;
  }
}
