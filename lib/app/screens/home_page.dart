import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_work/app/services/post_controller.dart';

class HomePage extends GetView<PostController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if(controller.isLoading.value){
        return const Center(child: CircularProgressIndicator());
      }else{
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: controller.scrollController,
                itemCount: controller.state.posts.length,
                itemBuilder: (context, index){
                  return Container();
                },
              ),
            ),
            controller.isLoadingMore.value
                ? const CircularProgressIndicator()
                : Container()
          ],
        );
      }
    });
  }
}
