import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:internship_work/app/widgets/reaction_container.dart';
import 'package:internship_work/app/widgets/user_details_panel.dart';

import '../config/colors.dart';

class PostCard extends StatefulWidget {
  const PostCard({super.key});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 7.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icon/Heart Solid Icon.svg',
                  height: 13.h,
                  width: 13.h,
                  color: AppColors.unselectedIconColor,
                ),
                SizedBox(
                  width: 7.h,
                ),
                Text(
                  'Kieron Dotson Retweeted',
                  style: TextStyle(
                    color: AppColors.unselectedIconColor,
                    fontSize: 14.h,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 10.h,
                  right: 3.h,
                ),
                height: 55.h,
                width: 55.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img/Roundpro.jpg'),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const UserDetailsPanel(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_drop_down_sharp,
                          color: AppColors.unselectedIconColor,
                          size: 28.h,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 258.h,
                    color: AppColors.appBackgroundColor,
                    child: Text(
                      'UXR/UX: You can only bring one item to a remote island to assist your research of native use of tools and usability.What do you bring?#TellMeAboutYou',
                      style: TextStyle(
                        fontSize: 14.h,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    width: 230.h,
                    child: const ReactionContainer(),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          const Divider(
            thickness: 0.1,
            color: AppColors.unselectedIconColor,
          ),
        ],
      ),
    );
  }
}
