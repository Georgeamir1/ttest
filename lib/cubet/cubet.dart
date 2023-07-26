import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ttest/cubet/state.dart';

class counterubit extends Cubit<counterstate>{

  counterubit():super(initialCounterState());

  static counterubit get(context) => BlocProvider.of(context);
  int count=0;
  void increment()
  {
    count++;
    emit(increamenCounterState());
  }
  void decrement()
  {
    count--;
    emit(decreamentCounterState());
  }

}