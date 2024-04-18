import 'package:flutter_starter_project/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity?> getUser(int userId);
}
