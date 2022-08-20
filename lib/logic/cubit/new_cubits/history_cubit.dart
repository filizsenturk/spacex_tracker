
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryCubit extends Cubit<int?> {
  HistoryCubit() : super(null);

  setHistoryIndex(int index){
    emit(index);
  }
  getHistoryIndex(){
    return state;
  }
}
