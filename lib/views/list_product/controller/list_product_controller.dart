import 'package:concung/repository/device_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../models/device_model.dart';

class ListProductController extends GetxController {
  RxList<DeviceModel> list = <DeviceModel>[].obs;
  @override
  void onInit() {
    fetch();
    super.onInit();
  }

  fetch() async {
    list.value = await DeviceRepository.getAll();
    list.refresh();
  }
}
