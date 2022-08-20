
import 'package:flutter_bloc/flutter_bloc.dart';

class ShipCubit extends Cubit<int?> {
  ShipCubit() : super(null);

  setShipCubit(int index){
    emit(index);
  }

  getShipCubit(){
    return state;
  }
}
