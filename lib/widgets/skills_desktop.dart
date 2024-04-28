import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marqueer/marqueer.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/skillicons.dart';
import 'package:my_portfolio/widgets/skills_desktop_image_section.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: double.maxFinite,
          ),
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (int i = 0; i < platformIcons.length; ++i)
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: const LinearGradient(colors: [
                      Colors.pinkAccent,
                      Colors.blue,
                    ]),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.pink,
                        offset: Offset(-2, 0),
                        blurRadius: 1,
                      ),
                      BoxShadow(
                        color: Colors.blue,
                        offset: Offset(2, 0),
                        blurRadius: 1,
                      ),
                    ],
                  ),
                  child: Container(
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
                      title: Text(
                        platformIcons[i]["title"],
                        style: TextStyle(
                            fontSize: 4.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),

        const SizedBox(
          height: 50,
        ),

        SkilssImages(),

        // Flexible(
        //   child: ConstrainedBox(
        //     constraints: const BoxConstraints(
        //       maxWidth: 500,
        //     ),
        //     child: Wrap(
        //       spacing: 10,
        //       runSpacing: 10,
        //       children: [
        //         for (int i = 0; i < skillItems.length; ++i)
        //           Chip(
        //             backgroundColor: Colors.blueGrey,
        //             padding:
        //                 EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
        //             label: Text(
        //               skillItems[i]['title'],
        //               style: TextStyle(color: Colors.white, fontSize: 4.sp),
        //             ),
        //             avatar: Image.asset(skillItems[i]['img']),
        //             side: BorderSide(
        //                 strokeAlign: BorderSide.strokeAlignCenter,
        //                 color: Colors.white.withOpacity(0.2)),
        //           )
        //       ],
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
