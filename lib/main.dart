import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/API/api_client.dart';
import 'app/routes/route_paths.dart';
import 'app/routes/routes.dart';

Future<void> main() async {

  Get.put<ApiClient>(ApiClient());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        getPages: RouteHelper.routes,
        initialRoute: RoutePaths.homePage,
      ),
    );
  }
}