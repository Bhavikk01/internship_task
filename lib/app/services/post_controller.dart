import 'dart:developer';

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
  ScrollController scrollController = ScrollController();

  @override
  Future<void> onInit() async {
    Response res = await ApiClient
        .to.getData("https://techcrunch.com/wp-json/wp/v2/posts?per_page=5&page=$currentPage");
    log(res.body.toString());
    for(var data in res.body){
      state.posts.add(PostModel.fromJson(data));
    }
    isLoading.value = false;
    log('Number of posts: ${state.posts.length}');
    scrollController.addListener(getPosts);
    super.onInit();
  }

  getPosts() async {
    if(scrollController.hasClients){
      if(scrollController.position.extentAfter < 10 && !isLoadingMore.value){
        isLoadingMore.value = true;
        Response res = await ApiClient
            .to.getData("https://techcrunch.com/wp-json/wp/v2/posts?per_page=5&page=$currentPage");
        for(var data in res.body){
          state.posts.add(PostModel.fromJson(data));
        }
        log(res.body.toString());
        log('Number of posts: ${state.posts.length}');
        isLoadingMore.value = false;
        currentPage++;
      }
    }
  }
}