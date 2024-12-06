part of 'register_cubit.dart';

@immutable
abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class RegisterLoding extends RegisterState {}

class RegisterSuccess extends RegisterState {}

class RegisterFaluer extends RegisterState {
  String errMaseag;
  RegisterFaluer({required this.errMaseag});
}
