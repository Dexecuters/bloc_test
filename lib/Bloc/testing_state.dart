part of 'testing_bloc.dart';

@immutable
abstract class TestingState {}

class TestingInitial extends TestingState {}
class Loading extends TestingState {}
class Success extends TestingState {}
