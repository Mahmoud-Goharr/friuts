import 'package:fruitify/features/auth/doamin/entities/user_entity.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UserModel extends UserEntity {

   UserModel({
    required super.name,
    required super.email, required super.uId, 
  });

  factory UserModel.fromSupabaseUser(User user) {
    return UserModel(
      
      email: user.email??'',
      uId: user.id,
      name: user.userMetadata?['name'] ,
    );
  }

 
}