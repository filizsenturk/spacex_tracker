
import 'package:flutter_bloc/flutter_bloc.dart';

class VideoUrlCubit extends Cubit<String?> {
  VideoUrlCubit() : super(null);

  setVideoUrl(String url){
    emit(url);
  }

  getVideoUrl(){
    return state;
  }
}
