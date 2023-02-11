import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:internship_work/app/screens/post_content.dart';
import 'package:internship_work/app/services/post_controller.dart';
import 'package:internship_work/app/widgets/post_card.dart';

class HomePage extends GetView<PostController> {
  HomePage({Key? key}) : super(key: key);

  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        controller.scrollController = scrollController;
        if(controller.isLoading.value){
          return const Center(child: CircularProgressIndicator());
        }else{
          return Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.w),
                  child: ListView.builder(
                    shrinkWrap: true,
                    controller: scrollController,
                    itemCount: controller.state.posts.length,
                    itemBuilder: (context, index){
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => PostContent(postModel: controller.state.posts[index])
                            ),
                          );
                        },
                        child: const PostCard(),
                      );
                    },
                  ),
                ),
              ),
              controller.isLoadingMore.value
                  ? const CircularProgressIndicator()
                  : Container()
            ],
          );
        }
      }),
    );
  }
}
