import '../../model/student.dart';

abstract class IStudentRepository {
  Future<List<Student>> fetchStudents();
}
