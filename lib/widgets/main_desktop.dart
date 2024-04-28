import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      height: screenSize.height / 1.22,
      constraints: const BoxConstraints(
        minHeight: 350,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Hi,\nI'm Sarang Ingle\nA Flutter Developer",
            style: TextStyle(
                fontSize: 8.sp,
                height: 1.5.h,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary),
          ),
          Image.asset(
            'assets/flutter_teacher.jpeg',
            fit: BoxFit.fill,
            colorBlendMode: BlendMode.darken,
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}
