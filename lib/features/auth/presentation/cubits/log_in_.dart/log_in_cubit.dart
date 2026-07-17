import 'package:bloc/bloc.dart';
import 'package:fruitify/features/auth/doamin/entities/user_entity.dart';
import 'package:fruitify/features/auth/doamin/repos/auth_rebo.dart';

part 'log_in_state.dart';

class LogInCubit extends Cubit<LogInState> {
  LogInCubit(this.authRebo) : super(LogInInitial());

  final AuthRepo authRebo;

  Future<void> logInWithEmail(
    String email,
    String password,
  ) async {
    emit(LogInLoading());
    final result = await authRebo.logInWithEmail(
      email: email,
      password: password,
    );

    result.fold(
      (failure) => emit(LogInFailure(errorMessage: failure.message)),
      (userEntity) => emit(LogInSuccess(userEntity: userEntity)),
    );
  }

Future <void> logInWithGoogle() async {
    emit(LogInLoading());
    final result = await authRebo.logInWithGoogle();

    result.fold(
      (failure) => emit(LogInFailure(errorMessage: failure.message)),
      (userEntity) => emit(LogInSuccess(userEntity: userEntity)),
    );
  }
 
 Future<void> logInWithFacebook() async {
    emit(LogInLoading());
    final result = await authRebo.logInWithFacebook();

    result.fold(
      (failure) => emit(LogInFailure(errorMessage: failure.message)),
      (userEntity) => emit(LogInSuccess(userEntity: userEntity)),
    );
  }


}
