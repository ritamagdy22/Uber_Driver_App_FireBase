part of 'cubit_cubit.dart';

abstract class AuthState {}

class AuthtInitial extends AuthState {}

class AuthRegisterLoadingstate extends AuthState {}

class AuthSucess extends AuthState {}

class AuthFailed extends AuthState {}
