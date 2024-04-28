import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/constants/colors.dart';

class MobileDesktop extends StatelessWidget {
  const MobileDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      height: screenSize.height,
      constraints: const BoxConstraints(minHeight: 560.0),
      margin: EdgeInsets.symmetric(horizontal: 40.w, vertical: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColor.scaffoldBg.withOpacity(0.6),
                CustomColor.scaffoldBg.withOpacity(0.6),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              'assets/mainimagecropped.png',
              width: screenWidth,
              opacity: const AlwaysStoppedAnimation(.5),
              //   scale: 2,
              height: screenSize.height / 1.5,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Hi,\nI'm Sarang Ingle\nA Flutter Developer",
                style: TextStyle(
                    fontSize: 18.sp,
                    height: 1.5.h,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
