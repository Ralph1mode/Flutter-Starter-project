import 'package:dio/dio.dart';
import 'package:flutter_starter_project/domain/entities/user_entity.dart';

//in case of Json data
class ApiService {
  final Dio dio;

  ApiService({required this.dio});

  Future<List<UserEntity>> fetchStudents() async {
    final response = await dio.get('/students');
    throw UnimplementedError();
  }
}
