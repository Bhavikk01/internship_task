import 'package:get/get.dart';
import 'package:internship_work/app/screens/post_content.dart';

import 'post_controller.dart';

class PostBinding implements Bindings{

  @override
  void dependencies() {
    Get.put(PostController());
  }

}