//import both event.dart and state.dart files
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part "counter_state.dart";

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<CounteIncrement>(
      (event, emit) {
        emit(state.copywith(count: state.count++));
      },
    );

    on<CounteDecrement>(
      (event, emit) {
        emit(state.copywith(count: state.count--));
      },
    );
  }
}
