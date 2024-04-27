import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      scrollDirection: Axis.vertical,
      children: [
        //Main Section
        Container(
          height: 500.h,
          color: Colors.red,
          child: Center(
              child: Text(
            'This is main Section',
            style: TextStyle(fontSize: 10.sp),
          )),
        ),

        //skills section
        Container(
          height: 500.h,
          color: Colors.amber,
          child: Center(
              child: Text(
            'This is skills Section',
            style: TextStyle(fontSize: 10.sp),
          )),
        ),

        //project section
        Container(
          height: 500.h,
          color: Colors.red,
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
  }
}
