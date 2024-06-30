part of 'counter_bloc.dart';
class CounterState {
//default constructor value
  int count;
  CounterState({this.count = 0});
  CounterState copywith({int? count}) {
    return CounterState(count: count ?? this.count); 
  }
}
