part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

final class LoadingHomeState extends HomeState {}

final class ErrorHomeState extends HomeState {}

final class SuccessHomeState extends HomeState {}
