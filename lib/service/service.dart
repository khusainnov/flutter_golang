import 'package:get/get.dart';

class DataService extends GetConnect implements GetxService {
  Future<Response> getData() async {
    Response response = await get(
      "http://localhost:6001/",
    );

    return response;
  }
}
