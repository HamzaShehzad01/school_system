import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TestScree extends StatefulWidget {
  const TestScree({super.key});

  @override
  State<TestScree> createState() => _TestScreeState();
}

class _TestScreeState extends State<TestScree> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    print(width);
    print(height);
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Text(
            'Login',
            style: TextStyle(
              fontSize: 25.sp,
              color: Colors.blue,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0).w,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              color: Colors.white,
              // height: ScreenUtil().setHeight(20),
              width: 340.w,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter Name',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0).w,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              color: Colors.white,
              // height: 50.h,
              // height: ScreenUtil().setHeight(20),
              width: 340.w,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter Email',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0).w,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4.r),
              ),
              // height: ScreenUtil().setHeight(20),
              width: 340.w,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter Password',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            alignment: Alignment.center,
            height: 45.h,
            width: 346.w,
            decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(4.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 5,
                    spreadRadius: 5,
                  )
                ]),
            child: Text(
              'Login',
              style: TextStyle(
                fontSize: 15.sp,
                color: Colors.white,
              ),
            ),
          )
        ],
      )),
    );
  }
}
