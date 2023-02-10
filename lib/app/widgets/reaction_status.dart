import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitter_ui/color/app_color.dart';

class ReactionStatus extends StatefulWidget {
  final String svgImagePath;
  final int count;
  const ReactionStatus({required this.svgImagePath, this.count = 0, super.key});

  @override
  State<ReactionStatus> createState() => _ReactionStatusState();
}

class _ReactionStatusState extends State<ReactionStatus> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          widget.svgImagePath,
          height: 15.h,
          width: 15.h,
          color: AppColors.unselectedIconColor,
        ),
        SizedBox(
          width: 3.h,
        ),
        (widget.count == 0)
            ? Text("")
            : Text(
                widget.count.toString(),
                style: TextStyle(
                  color: AppColors.unselectedIconColor,
                ),
              ),
      ],
    );
  }
}
