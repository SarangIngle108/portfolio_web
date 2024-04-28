import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/skillicons.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 500,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          for (int i = 0; i < platformIcons.length; ++i)
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                // gradient: const LinearGradient(colors: [
                //   Colors.pinkAccent,
                //   Colors.blue,
                // ]),
                // boxShadow: const [
                //   BoxShadow(
                //     color: Colors.pink,
                //     offset: Offset(-1, 0),
                //     blurRadius: 0.2,
                //   ),
                //   BoxShadow(
                //     color: Colors.blue,
                //     offset: Offset(1, 0),
                //     blurRadius: 0.2,
                //   ),
                // ],
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 12),
                    width: double.maxFinite,
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
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: double.maxFinite,
            ),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,
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
          )
        ],
      ),
    );
  }
}
