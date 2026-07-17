import 'package:dartz/dartz.dart';
import 'package:fruitify/core/errors/failure.dart';
import 'package:fruitify/features/auth/doamin/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> signUpWithEmail({
    required String email,
    required String password,
    required String name,
  });

  Future<Either<Failure, UserEntity>> logInWithEmail({
    required String email,
    required String password,
  });


 

  Future<Either<Failure, UserEntity>> logInWithGoogle();

  Future<Either<Failure, UserEntity>> logInWithFacebook();
}
