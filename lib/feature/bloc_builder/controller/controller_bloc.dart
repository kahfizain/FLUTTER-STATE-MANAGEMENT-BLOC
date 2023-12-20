import 'package:bloc/bloc.dart';

class ControlBloc extends Cubit<int> {
  ControlBloc({this.init = 0}) : super(init);

  int init;

  void addData() {
    emit(state + 1);
  }

  void removeData() {
    if (state > 0) {
      emit(state - 1);
    } else {
      emit(0);
    }
  }


}
