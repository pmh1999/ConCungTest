import '../models/device_model.dart';
import '../services/device_api.dart';

class DeviceRepository {
  static Future<List<DeviceModel>> getAll() async {
    var res = await DeviceAPI.getAll();
    List<DeviceModel> list = res.map((e) => e as DeviceModel).toList();
    return list;
  }
}
