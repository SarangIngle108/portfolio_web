import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';

class EndDrawer extends StatelessWidget {
  const EndDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.scaffoldBg,
      child: ListView(
        children: [
          for (int i = 0; i < navIcons.length; ++i)
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
              leading: Icon(navIcons[i]),
              title: Text(navTitles[i]),
              titleTextStyle: TextStyle(
                  fontSize: 12.sp,
                  color: CustomColor.whitePrimary,
                  fontWeight: FontWeight.w600),
              onTap: () {},
            )
        ],
      ),
    );
  }
}
