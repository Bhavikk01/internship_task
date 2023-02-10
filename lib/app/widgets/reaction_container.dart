import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitter_ui/widgets/reaction_status.dart';

class ReactionContainer extends StatefulWidget {
  const ReactionContainer({super.key});

  @override
  State<ReactionContainer> createState() => _ReactionContainerState();
}

class _ReactionContainerState extends State<ReactionContainer> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ReactionStatus(
          svgImagePath: 'assets/icon/Comment Stroke Icon.svg',
          count: 7,
        ),
        ReactionStatus(
          svgImagePath: 'assets/icon/Retweet Stroke Icon.svg',
          count: 1,
        ),
        ReactionStatus(
          svgImagePath: 'assets/icon/Heart Stroke Icon.svg',
          count: 11,
        ),
        ReactionStatus(
          svgImagePath: 'assets/icon/Share Stroke Icon.svg',
        ),
      ],
    );
  }
}
