part of 'sign_up_bloc.dart';

@immutable
abstract class SignUpState {}

class SignUpInitial extends SignUpState {}

final class LoadingSignUpState extends SignUpState {}

final class ErrorSignUpState extends SignUpState {}

final class SuccessSignUpState extends SignUpState {}
