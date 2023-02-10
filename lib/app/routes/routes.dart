import 'package:get/get.dart';
import 'package:internship_work/app/routes/route_paths.dart';

import '../screens/home_page.dart';
import '../screens/post_content.dart';
import '../services/post_binding.dart';


class RouteHelper{

  static List<GetPage> routes=[

    GetPage(
      name: RoutePaths.postContent,
      page: ()=> PostContent(
        postModel: ,
      ),
    ),

    GetPage(
      name: RoutePaths.homePage,
      page: ()=> const HomePage(),
      binding: PostBinding(),
    ),
    // GetPage(
    //   name: RoutePaths.signInGoogle,
    //   page: ()=> const SignInGoogle(),
    //   binding: SignInBinding(),
    // ),
    //
    // GetPage(
    //   name: RoutePaths.chatPage,
    //   page: ()=> const HomePage(),
    //   binding: ,
    // ),
    //
    // GetPage(
    //   name: RoutePaths.chattingRoom,
    //   page: ()=> const HomePage(),
    //   binding: ,
    // ),
    //
    // GetPage(
    //   name: RoutePaths.chattingSpace,
    //   page: ()=> const HomePage(),
    //   binding: ,
    // ),
  ];
}