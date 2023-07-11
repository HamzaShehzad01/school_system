import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 52.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 63.h,
              ),
              Image.asset(
                'assets/icons/vetor.png',
                height: 10,
                width: 10,
              ),
              Text(
                'Sign Up to Masterminds',
                style: TextStyle(
                  fontSize: 20.sp,
                ),
              ),
              Text(
                'Already have an account?login',
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                height: 37.h,
                width: 238.w,
                color: Colors.grey[200],
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter name..',
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                height: 37.h,
                width: 238.w,
                color: Colors.grey[200],
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter Email..',
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                height: 37.h,
                width: 238.w,
                color: Colors.grey[200],
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter Password..',
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                height: 37.h,
                width: 238.w,
                color: Colors.grey[200],
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter confirm password..',
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                alignment: Alignment.center,
                height: 45.h,
                width: 324.w,
                decoration: BoxDecoration(
                  border: Border.fromBorderSide(BorderSide(
                    color: Colors.purple.withOpacity(0.1),
                  )),
                  boxShadow: [
                    const BoxShadow(
                      color: Color.fromARGB(255, 174, 200, 222),
                      spreadRadius: 4,
                      blurRadius: 3,
                      offset: Offset(10, 5),
                    ),
                    BoxShadow(
                      color: const Color.fromARGB(255, 241, 204, 236)
                          .withOpacity(0.3),
                      spreadRadius: 4,
                      blurRadius: 3,
                      offset: const Offset(10, 5),
                    )
                  ],
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromRGBO(240, 228, 228, 1),
                      Color.fromRGBO(97, 129, 243, 0.17),
                    ],
                    stops: [
                      0.3,
                      0.8,
                    ],
                    tileMode: TileMode.clamp,
                  ),
                  color: const Color.fromRGBO(240, 228, 228, 1),
                  borderRadius: BorderRadius.circular(7.r),
                ),
                child: Text(
                  'SignUp',
                  style: TextStyle(
                    fontSize: 17.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                alignment: Alignment.center,
                height: 37.h,
                width: 238.w,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Text(
                  'Create Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
