import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'testing_event.dart';
part 'testing_state.dart';

class TestingBloc extends Bloc<TestingEvent, TestingState> {
  TestingBloc() : super(TestingInitial()) {
    on<TestingEvent>((event, emit) {
      // TODO: implement event handler
      try{
        if(event is TheTestingEvent){
          emit.call(Loading());
          emit.call(Success());
        }else{}
      }catch(e){
        print(e.toString());
      }
    });
  }
}
