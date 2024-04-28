import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marqueer/marqueer.dart';
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
                      ShaderMask(
                          shaderCallback: (bounds) {
                            return const LinearGradient(colors: [
                              Colors.blue,
                              Colors.pinkAccent,
                            ]).createShader(bounds);
                          },
                          blendMode: BlendMode.srcATop,
                          child: Text(
                            'What I Can Do',
                            style: TextStyle(
                                fontSize: 8.sp, fontWeight: FontWeight.bold),
                          )),
                      const SizedBox(
                        height: 40,
                      ),
                      if (constraints.maxWidth >= 850)
                        const SkillsDesktop()
                      else
                        const SkillsMobile()
                    ],
                  )),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(colors: [
                    Colors.pinkAccent,
                    Colors.blue,
                  ]),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.pink,
                      offset: Offset(-2, 0),
                      blurRadius: 20,
                    ),
                    BoxShadow(
                      color: Colors.blue,
                      offset: Offset(2, 0),
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: Container(
                  color: CustomColor.bgLight1,
                  height: 100,
                  child: Marqueer(
                    interaction: true,
                    pps: 32,
                    direction: MarqueerDirection.ltr,
                    restartAfterInteractionDuration: const Duration(seconds: 3),
                    child: Row(
                      children: [
                        for (int i = 0; i < skillItems.length; ++i)
                          Card(
                            elevation: 3,
                            shadowColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: const Color.fromARGB(255, 0, 0, 0),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 75,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        skillItems[i]["img"],
                                      ),
                                    )),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                  child: Text(
                                    skillItems[i]['title'],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(colors: [
                    Colors.pinkAccent,
                    Colors.blue,
                  ]),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.pink,
                      offset: Offset(-2, 0),
                      blurRadius: 20,
                    ),
                    BoxShadow(
                      color: Colors.blue,
                      offset: Offset(2, 0),
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: Container(
                  //   decoration: BoxDecoration(border: Border.all()),
                  color: CustomColor.bgLight1,
                  height: 100,
                  child: Marqueer(
                    interaction: true,
                    pps: 32,
                    direction: MarqueerDirection.rtl,
                    restartAfterInteractionDuration: const Duration(seconds: 3),
                    child: Row(
                      children: [
                        for (int i = 0; i < skillItems.length; ++i)
                          Card(
                            elevation: 3,
                            shadowColor: Colors.grey,
                            //   surfaceTintColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: const Color.fromARGB(255, 0, 0, 0),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 75,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        skillItems[i]["img"],
                                      ),
                                    )),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                  child: Text(
                                    skillItems[i]['title'],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),

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
