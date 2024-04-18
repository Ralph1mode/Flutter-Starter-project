import 'package:flutter_starter_project/domain/entities/user_entity.dart';
import 'package:flutter_starter_project/domain/repositories/user_repository.dart';
import 'package:flutter_starter_project/domain/useCases/user_usecase.dart';

class UserRepositoryImpl implements UserRepository {
  final GetUserUseCase getUserUseCase;

  UserRepositoryImpl({required this.getUserUseCase});

  @override
  Future<UserEntity?> getUser(int userId) async {
    return await getUserUseCase(userId);
  }
}
