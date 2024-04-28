import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SideLogo extends StatelessWidget {
  const SideLogo({super.key, this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
          padding: EdgeInsets.only(left: 0.w),
          child: Image.asset('assets/flutter_normal_bird.jpg')),
    );
  }
}
