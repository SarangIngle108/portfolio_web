import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/widgets/side_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      margin: EdgeInsets.fromLTRB(40.w, 5.h, 20.w, 5.h),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Colors.transparent, CustomColor.bgLight1]),
          borderRadius: BorderRadius.circular(100)),
      child: Row(children: [
        const SideLogo(),
        const Spacer(),
        IconButton(onPressed: onTap, icon: const Icon(Icons.menu)),
        const SizedBox(
          width: 10,
        )
      ]),
    );
  }
}
