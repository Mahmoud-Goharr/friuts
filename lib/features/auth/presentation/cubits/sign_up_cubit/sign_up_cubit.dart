import 'package:bloc/bloc.dart';
import 'package:fruitify/features/auth/doamin/entities/user_entity.dart';
import 'package:fruitify/features/auth/doamin/repos/auth_rebo.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRebo) : super(SignUpInitial());

  final AuthRepo authRebo;

  Future<void> signUpWithEmail(
    String email,
    String password,
    String name,
  ) async {
    emit(SignUpLoading());
    final result = await authRebo.signUpWithEmail(
      email: email,
      password: password,
      name: name,
    );

    result.fold(
      (failure) => emit(SignUpFailure(errorMessage: failure.message)),
      (userEntity) => emit(SignUpSuccess(userEntity: userEntity)),
    );
  }


}
