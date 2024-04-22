import 'package:dio/dio.dart';
import 'package:flutter_starter_project/domain/entities/student_entity.dart';

//in case of Json data with dio
class ApiService {
  final Dio dio;

  ApiService({required this.dio});

  Future<List<Student>> fetchStudents() async {
    final response = await dio.get('/students');
    throw UnimplementedError();
  }
}
