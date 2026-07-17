part of 'log_in_cubit.dart';

sealed class LogInState {}

final class LogInInitial extends LogInState {}

final class LogInLoading extends LogInState {}

final class LogInSuccess extends LogInState {
  final UserEntity userEntity;
  LogInSuccess({required this.userEntity});
}

final class LogInFailure extends LogInState {
  final String errorMessage;
  LogInFailure({required this.errorMessage});
}
