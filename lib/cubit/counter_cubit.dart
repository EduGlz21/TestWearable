import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart'; //instalar con flutter pub add fluttertoast o colocarlo en el pubspec

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    if (state != 10) {
      emit(state + 1);
    } else {
      Fluttertoast.showToast(msg: "Limite alto alcanzado :)", fontSize: 10.5);
    }
  }

  void decrement() {
    if (state != -10) {
      emit(state - 1);
    } else {
      Fluttertoast.showToast(msg: "Limite bajo alzanzado :(", fontSize: 10.5);
    }
  }

  void restart() => emit(0); 
}
