import 'package:concung/views/login/login.dart';
import 'package:get/get.dart';

import '../views/list_product/controller/list_product_controller.dart';
import '../views/list_product/list_product.dart';
import '../views/login/controller/login_controller.dart';

List<GetPage<dynamic>> ROUTES = [
  GetPage(
    name: "/",
    page: () => LoginPage(),
    binding: BindingsBuilder(() {
      Get.put(LoginController());
    }),
  ),
  GetPage(
    name: "/list_product",
    page: () => ListProduct(),
    binding: BindingsBuilder(() {
      Get.put(ListProductController());
    }),
  ),
];
