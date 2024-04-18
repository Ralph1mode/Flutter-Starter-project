import 'package:flutter_starter_project/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<List<UserEntity?>> getAll();

  Future<UserEntity?> getUser(int userId);

  Future<void> insert(UserEntity user);

  Future<void> update(UserEntity book);

  Future<void> delete(int id);
}
