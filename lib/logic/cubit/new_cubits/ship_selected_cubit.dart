
import 'package:flutter_bloc/flutter_bloc.dart';

class ShipSelectedCubit extends Cubit<bool> {
  ShipSelectedCubit() : super(false);

  setShipSelected(bool value){
    emit(value);
  }

  getShipSelected(){
    return state;
  }
}
