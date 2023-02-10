import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_work/app/API/api_client.dart';
import 'package:internship_work/app/models/post_model.dart';
import 'package:internship_work/app/services/post_state.dart';

class PostController extends GetxController{
  final state = PostState();
  var isLoadingMore = false.obs;
  var isLoading = false.obs;
  int currentPage = 1;
  late ScrollController scrollController;

  @override
  Future<void> onInit() async {
    await getPosts();
    isLoading.value = false;
    scrollController = ScrollController()..addListener(getPosts);
    super.onInit();
  }

  getPosts() async {
    if(scrollController.position.extentAfter < 400){
      isLoadingMore.value = true;
      Response res = await ApiClient
          .to.getData("https://techcrunch.com/wp-json/wp/v2/posts?per_page=6&page=$currentPage");
      for(var data in res.body){
        state.posts.add(PostModel.fromJson(data));
      }
      isLoadingMore.value = false;
      currentPage++;
    }
  }

}