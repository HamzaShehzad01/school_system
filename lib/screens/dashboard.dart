import 'package:flutter/material.dart';
import 'package:school_management_system/screens/add_class.dart';
import 'package:school_management_system/screens/add_expense.dart';
import 'package:school_management_system/screens/add_fee.dart';
import 'package:school_management_system/screens/add_subject.dart';
import 'package:school_management_system/screens/add_teacher.dart';
import 'package:school_management_system/screens/assign_subject.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        //backgroundColor: Colors.black,
        child: ListView(
          children: [
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddClassScreen(),
                    ));
              },
              title: Text('Add Class'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddFeeScreen(),
                    ));
              },
              title: const Text('Add Fee'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddSubjectScreen(),
                    ));
              },
              title: const Text('Add Subject'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddTeacherScreen(),
                    ));
              },
              title: const Text('Add Teacher'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AssignSubjectScreen(),
                    ));
              },
              title: const Text('Assing Subject'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddExpenseScreen(),
                    ));
              },
              title: const Text('Add Expense'),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Center(child: Text('Dashboard')),
      ),
    );
  }
}
