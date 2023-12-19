import 'package:bloc/bloc.dart';

class CounterObserverCubit extends Cubit<int> {
  CounterObserverCubit({this.initialData = 0}) : super(initialData);

  int initialData;
  int? current;
  int? next;

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

  //observer
  //- memantau perubahan (onChange)
  //- memantau error (onError)

  //di bloc ada fiture untuk memantau data
  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);

    //sebelum
    current = change.currentState;
    //sesudah
    next = change.nextState;
  }

  //ini fiture untuk fiture memantau error
  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
  }
}
