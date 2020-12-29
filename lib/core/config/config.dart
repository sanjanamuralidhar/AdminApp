import 'package:openapi/model/user_dto.dart';

class Config {
  static final SERVER_BASE_PATH = 'http://34.121.106.101:8080';

  static final APP_USER = 'admin';
  static final APP_PASSWORD = 'admin123';
  // static Map<String, String> TOKEN = AuthService().Token;
  static Map<String, String> TOKEN;
  static UserDTO USER;
  // static ServiceExecutive SERVICEEXECUTIVE;
}
