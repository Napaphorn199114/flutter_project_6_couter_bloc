import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_b_event.dart';
part 'counter_b_state.dart';

class CounterBBloc extends Bloc<CounterBEvent, CounterBState> {
  CounterBBloc() : super(CounterBState(count: 0)) {
 //Add Event
    on<CounterBEventAdd>((event, emit) {
     // emit(CounterBState(count: state.count+1));
     emit(state.copyWith(count: state.count+1));
    });

     //Add Reset
    on<CounterBEventReset>((event, emit) {
      //emit(CounterBState(count: 0));
      emit(state.copyWith(count: 0));
    });
  }
}
