import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fruitify/core/errors/exeption.dart';
import 'package:fruitify/core/errors/failure.dart';
import 'package:fruitify/core/services/supabase_auth_service.dart';
import 'package:fruitify/features/auth/data/models/user_model.dart';
import 'package:fruitify/features/auth/doamin/entities/user_entity.dart';
import 'package:fruitify/features/auth/doamin/repos/auth_rebo.dart';

class AuthRepositoryImpl extends AuthRepo {
  final SupabaseAuthService supabaseAuthService;

  AuthRepositoryImpl({required this.supabaseAuthService});

  @override
  Future<Either<Failure, UserEntity>> signUpWithEmail({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final user = await supabaseAuthService.signUpWithEmail(
        email: email,
        password: password,
        name: name,
      );

      return Right(UserModel.fromSupabaseUser(user));
    } on CustomException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      log('Exeption in AuthReboImpl.signUpWithEmail: ${e.toString()}');
      return Left(ServerFailure('تعذر إنشاء الحساب. يرجى المحاولة مرة أخرى.'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> logInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final user = await supabaseAuthService.signInWithEmail(
        email: email,
        password: password,
      );

      return Right(UserModel.fromSupabaseUser(user));
    } on CustomException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      log('Exeption in AuthReboImpl.logInWithEmail: ${e.toString()}');
      return Left(ServerFailure('تعذر تسجيل الدخول. يرجى المحاولة مرة أخرى.'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> logInWithGoogle() async {
    try {
      final user = await supabaseAuthService.signInWithGoogle();

      return Right(UserModel.fromSupabaseUser(user));
    } on CustomException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in AuthRepositoryImpl.signInWithGoogle: ${e.toString()}');

      return Left(
        const ServerFailure('حدث خطأ أثناء تسجيل الدخول بواسطة Google.'),
      );
    }
  }

@override
Future<Either<Failure, UserEntity>> logInWithFacebook() async {
  try {
    final user = await supabaseAuthService.logInWithFacebook();

    return Right(UserModel.fromSupabaseUser(user));
  } on CustomException catch (e) {
    return Left(ServerFailure(e.message));
  } catch (e) {
    log(
      'Exception in AuthRepositoryImpl.logInWithFacebook: ${e.toString()}',
    );

    return Left(
      const ServerFailure('حدث خطأ أثناء تسجيل الدخول بواسطة Facebook.'),
    );
  }
}
}
