import 'package:concung/models/login_status.dart';

import '../services/database_helper.dart';

class LoginStatusRepo {
  Future<List<LoginStatus>> getAll() async {
    return await DatabaseHelper.instance.getAll();
  }

  Future<bool> add(LoginStatus status) async {
    await DatabaseHelper.instance.addTodo(status);
    return true;
  }
}
