import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/skillicons.dart';
import 'package:my_portfolio/widgets/end_drawer.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/main_desktop.dart';
import 'package:my_portfolio/widgets/mobile_desktop.dart';
import 'package:my_portfolio/widgets/skills_desktop.dart';
import 'package:my_portfolio/widgets/skills_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffoldKey,
          endDrawer: constraints.maxWidth >= 700 ? null : const EndDrawer(),
          backgroundColor: CustomColor.scaffoldBg,
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              if (constraints.maxWidth >= 700)
                const HeaderDesktop()
              else
                HeaderMobile(onTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                }),

              if (constraints.maxWidth >= 700)
                const MainDesktop()
              else
                const MobileDesktop(),

              //skills section
              Container(
                  width: screenSize.width,
                  padding: EdgeInsets.fromLTRB(25.w, 20.h, 25.w, 60.h),
                  color: CustomColor.bgLight1,
                  child: Column(
                    //  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "What I Can Do",
                        style: TextStyle(
                            fontSize: 8.sp,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.whitePrimary),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      if (constraints.maxWidth >= 850)
                        SkillsDesktop()
                      else
                        SkillsMobile()
                    ],
                  )),

              //project section
              Container(
                height: 500.h,
                color: CustomColor.bgLight2,
                child: Center(
                    child: Text(
                  'This is projects Section',
                  style: TextStyle(fontSize: 10.sp),
                )),
              ),

              //contact me section
              Container(
                height: 500.h,
                color: CustomColor.hintDark,
                child: Center(
                    child: Text(
                  'This is contact Section',
                  style: TextStyle(fontSize: 10.sp),
                )),
              ),
            ],
          ));
    });
  }
}
