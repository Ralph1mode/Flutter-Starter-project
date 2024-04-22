//******************
// Generated by kivi
//******************

import '../entities/student_entity.dart';

abstract class StudentRepository {
  Future<Student?> call(int studentId);

  Future<List<Student?>> getAll();

  Future<void> insert(Student student);

  Future<void> update(Student student);

  Future<void> delete(int id);
}
