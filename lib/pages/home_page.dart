import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/widgets/end_drawer.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/side_logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffoldKey,
          endDrawer: constraints.maxWidth >= 700 ? null : EndDrawer(),
          backgroundColor: CustomColor.scaffoldBg,
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //Main Section
              //  HeaderDesktop(),
              if (constraints.maxWidth >= 700)
                HeaderDesktop()
              else
                HeaderMobile(onTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                }),

              //skills section
              Container(
                height: 500.h,
                color: Colors.blueGrey,
                child: Center(
                    child: Text(
                  'This is skills Section',
                  style: TextStyle(fontSize: 10.sp),
                )),
              ),

              //project section
              Container(
                height: 500.h,
                color: Colors.grey,
                child: Center(
                    child: Text(
                  'This is projects Section',
                  style: TextStyle(fontSize: 10.sp),
                )),
              ),

              //contact me section
              Container(
                height: 500.h,
                color: Colors.blue,
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
