import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/widgets/side_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60.h,
        width: double.maxFinite,
        margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Colors.transparent, CustomColor.bgLight1]),
            borderRadius: BorderRadius.circular(100)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SideLogo(),
            const Spacer(),
            for (int i = 0; i < navTitles.length; ++i)
              Padding(
                padding: EdgeInsets.only(right: 15.w),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      navTitles[i],
                      style: TextStyle(
                          fontSize: 4.sp,
                          fontWeight: FontWeight.w500,
                          color: CustomColor.whitePrimary),
                    )),
              )
          ],
        ));
  }
}
