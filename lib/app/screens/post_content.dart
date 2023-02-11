import 'package:flutter/material.dart';

import '../models/post_model.dart';
import '../widgets/post_card.dart';

class PostContent extends StatelessWidget {
  final PostModel postModel;
  const PostContent({required this.postModel, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PostCard(),
    );
  }
}
