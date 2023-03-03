class DeviceModel {
  String name;
  String url;
  String price;
  num rate;
  DeviceModel(
      {required this.name,
      required this.price,
      required this.rate,
      required this.url});
  factory DeviceModel.fromJson(Map<String, dynamic> json) => DeviceModel(
      name: json["device_name"],
      price: json["price"],
      rate: json["rate"],
      url: json["url"]);
}
