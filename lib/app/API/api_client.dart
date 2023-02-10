
import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService{
  static ApiClient get to => Get.find();


  Future<Response> getData(String uri) async{
    try{
      var response = await get(uri);
      return response;
    }catch(e){
      return Response(statusCode: 1,statusText: e.toString());
    }
  }
}