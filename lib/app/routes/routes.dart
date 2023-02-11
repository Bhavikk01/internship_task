import 'package:get/get.dart';
import 'package:internship_work/app/routes/route_paths.dart';

import '../screens/home_page.dart';
import '../screens/post_content.dart';
import '../services/post_binding.dart';

class RouteHelper {
  static List<GetPage> routes = [

    GetPage(
      name: RoutePaths.homePage,
      page: () => HomePage(),
      binding: PostBinding(),
    ),
  ];
}
