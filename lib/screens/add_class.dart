import 'package:flutter/material.dart';
import 'package:school_management_system/models/class_model.dart';

class AddClassScreen extends StatefulWidget {
  const AddClassScreen({super.key});

  @override
  State<AddClassScreen> createState() => _AddClassScreenState();
}

class _AddClassScreenState extends State<AddClassScreen> {
  TextEditingController nameC = TextEditingController();
  // List<SClass> clist = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 30),
              const Text(
                'Add Class',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: nameC,
                decoration: const InputDecoration(
                  hintText: 'Enter Class name....',
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  SClass c = SClass(name: nameC.text);
                  print(c.name);
                },
                child: const Text('Add Class'),
              ),
              const SizedBox(height: 20),
              // Expanded(
              //   child: DataTable(
              //     dividerThickness: 3,
              //     columns: const [
              //       DataColumn(label: Text('Sr#')),
              //       DataColumn(label: Text('class name')),
              //     ],
              //     rows: const [],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
