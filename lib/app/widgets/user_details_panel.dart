import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/colors.dart';

class UserDetailsPanel extends StatefulWidget {
  const UserDetailsPanel({super.key});

  @override
  State<UserDetailsPanel> createState() => _UserDetailsPanelState();
}

class _UserDetailsPanelState extends State<UserDetailsPanel> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Martha Craig',
          style: TextStyle(
            fontSize: 15.h,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 4.h,
        ),
        SvgPicture.asset(
          'assets/icon/Tick icon.svg',
          height: 14.h,
          width: 14.h,
        ),
        SizedBox(
          width: 4.h,
        ),
        Text(
          '@craig_love',
          style: TextStyle(
            fontSize: 15.h,
            color: AppColors.unselectedIconColor,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          width: 4.h,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 8.h),
          child: Text(
            '.',
            style: TextStyle(
              fontSize: 15.h,
              color: AppColors.unselectedIconColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Text(
          '12h',
          style: TextStyle(
            fontSize: 15.h,
            color: AppColors.unselectedIconColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
