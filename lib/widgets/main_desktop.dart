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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi,\nI'm Sarang Ingle",
                style: TextStyle(
                    fontSize: 8.sp,
                    height: 1.5.h,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary),
              ),
              ShaderMask(
                  shaderCallback: (bounds) {
                    return const LinearGradient(colors: [
                      Colors.pink,
                      Colors.blueAccent,
                    ]).createShader(bounds);
                  },
                  blendMode: BlendMode.srcATop,
                  child: Text(
                    'Flutter Developer',
                    style:
                        TextStyle(fontSize: 8.sp, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          Image.asset(
            'mainimagecropped.png',
            fit: BoxFit.fill,
            colorBlendMode: BlendMode.darken,
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}
