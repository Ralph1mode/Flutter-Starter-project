import 'package:flutter_starter_project/domain/entities/user_entity.dart';

abstract class GetUserUseCase {
  Future<UserEntity?> call(int userId);
}
