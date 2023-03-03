import 'package:concung/models/device_model.dart';
import 'package:dio/dio.dart';

class DeviceAPI {
  DeviceAPI() : super();

  static final String _baseUrl =
      'https://6065f2b5b8fbbd0017567c45.mockapi.io/apiv1/listProducts';

  static Future<List<dynamic>> getAll() async {
    Dio dio = new Dio();
    dio.options.headers['Accept'] = 'application/json';
    dio.options.headers['ContextID'] = 'eaa95890-469d-11ed-ae23-e1bfc21d7128';

    dio.options.headers['SessionID'] = '1751028';

    dio.options.headers['Content-Type'] = 'application/json';

    dio.options.headers['Authorization'] =
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjdXN0b21lcl9pZCI6IjUiLCJ1c2VybmFtZSI6IjAzNTY4ODIwNDYiLCJjdXN0b21lcl9uYW1lIjoiIiwiYXZhdGFyX3VybCI6IiIsImdlbmRlciI6IjAiLCJkZXZpY2VfaWQiOiI2ODg0MGE1NjU4NGIwZTRmIiwiZmNtX3Rva2VuIjoiZHQtVlFfSEZTcHVhdzlrczBueXVPZjpBUEE5MWJIbm1mR0dZNHhYSUtyQ0l1dzhPNGRwRE9raHZ0bWM3QlQ0RTdyMzJIVzRkSnpxTnJmaC1JWDlSMXMyb0hweEhIZTN0T2hYT3I5a3pjaGgtRzBZdXI1ZVdxWmpDdDAyZ21HVmNIZEVXQVlJSXVhWmhxbUh3Z1JWWkt0UkpkemtmNnZFT3k3bCIsInNlc3Npb25faWQiOiIxNzUxMDI4IiwicmVmcmVzaF90b2tlbiI6ImM3MDU0YmJhMWVlOGZjMDNmYzRmYzFkM2FiMGMzMzlkIiwicmVmcmVzaF9leHBpcnlfdGltZSI6IjE2NjUyOTM5NzMiLCJuYmYiOjE2NjUxNjQzNzMsImV4cCI6MTY2NTI5Mzk3MywiaWF0IjoxNjY1MTY0MzczfQ.gDc1HkvGS30RFL1Q4VL0uHKo7tFOp480eB3bRxIIamA';
    dio.options.headers['UserID'] = 'condung_id_1';

    dio.options.headers['VersionApi'] = 'v1';

    final Response<dynamic>? response = await dio.get(_baseUrl);
    print(response?.data['data']);
    var res = response?.data['data']
        .map((dynamic json) => DeviceModel.fromJson(json))
        .toList();
    print(res);
    return res;
  }
}
