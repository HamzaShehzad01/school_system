import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_management_system/screens/add_expense.dart';
import 'package:school_management_system/screens/add_fee.dart';
import 'package:school_management_system/screens/add_subject.dart';
import 'package:school_management_system/screens/add_teacher.dart';
import 'package:school_management_system/screens/assign_subject.dart';
import 'package:school_management_system/screens/dashboard.dart';
import 'package:school_management_system/screens/screenutiltest.dart';
import 'package:school_management_system/screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 772),
        builder: (context, child) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            home: SignUpScreen(),
          );
        });
  }
}
