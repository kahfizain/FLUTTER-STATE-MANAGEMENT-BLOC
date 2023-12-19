import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit({this.initialData=0}) : super(initialData);

  int initialData;

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
