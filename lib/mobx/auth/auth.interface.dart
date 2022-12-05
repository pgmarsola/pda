abstract class IAuthRepository {
  Future<dynamic> login(String? email, String? password);
}
