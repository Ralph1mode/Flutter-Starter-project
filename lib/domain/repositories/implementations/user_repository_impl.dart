import 'package:flutter_starter_project/domain/entities/user_entity.dart';
import 'package:flutter_starter_project/domain/repositories/user_repository.dart';
import 'package:flutter_starter_project/domain/useCases/user_usecase.dart';

class UserRepositoryImpl implements UserRepository {
  final GetUserUseCase getUserUseCase;

  UserRepositoryImpl(this.getUserUseCase);

  @override
  Future<void> delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<UserEntity?>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<void> insert(UserEntity user) {
    // TODO: implement insert
    throw UnimplementedError();
  }

  @override
  Future<void> update(UserEntity book) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<UserEntity?> getUser(int userId) {
    // TODO: implement getUser
    throw UnimplementedError();
  }
}
