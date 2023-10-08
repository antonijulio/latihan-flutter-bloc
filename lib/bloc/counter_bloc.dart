// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';

class CounterBloc extends Cubit<int> {
  CounterBloc({this.init = 0}) : super(init);

  int init; //init value

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);

  // observer cubit
  @override
  void onChange(Change<int> change) {
    super.onChange(change);

    print(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);

    print(error);
  }
}
