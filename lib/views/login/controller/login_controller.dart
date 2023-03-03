import 'package:concung/models/login_status.dart';
import 'package:concung/repository/login_status_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool emailValid = true.obs;
  RxBool hideText = true.obs;
  @override
  void onInit() {
    Get.put(LoginStatusRepo());
    loadDB();
    super.onInit();
  }

  void loadDB() async {
    final prefs = await SharedPreferences.getInstance();
    var res = prefs.getBool('status');

    //var res = await Get.find<LoginStatusRepo>().getAll();
    if (res != null && res == true) {
      Get.toNamed('/list_product');
    }
  }

  hideorshowText() {
    hideText.value = !hideText.value;
  }

  bool validateEmail(value) {
    if (value.isEmpty ||
        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value)) {
      emailValid.value = false;
      return false;
    } else {
      emailValid.value = true;
      return true;
    }
  }

  login(email, password) async {
    print(email);
    print(password);
    if (validateEmail(email) == true) if (email ==
        'concung@gmail.com') if (password == 'concung123') {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('status', true);
      Get.toNamed('/list_product');
    }
  }
}
