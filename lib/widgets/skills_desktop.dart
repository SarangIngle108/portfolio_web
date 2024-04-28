import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/skillicons.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 450,
          ),
          child: Wrap(
            spacing: 5,
            runSpacing: 5,
            children: [
              for (int i = 0; i < platformIcons.length; ++i)
                Container(
                  // margin: EdgeInsets.symmetric(
                  //     vertical: 10.h, horizontal: 20.w),
                  width: 200,
                  decoration: BoxDecoration(
                    color: CustomColor.bgLight2,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                    leading: Image.asset(
                      platformIcons[i]["img"],
                      width: 26,
                    ),
                    title: Text(platformIcons[i]["title"]),
                  ),
                )
            ],
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 500,
            ),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                for (int i = 0; i < skillItems.length; ++i)
                  Chip(
                    backgroundColor: CustomColor.bgLight2,
                    padding:
                        EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
                    label: Text(
                      skillItems[i]['title'],
                      style: TextStyle(color: Colors.white),
                    ),
                    avatar: Image.asset(skillItems[i]['img']),
                    side: BorderSide(
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Colors.white.withOpacity(0.2)),
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
