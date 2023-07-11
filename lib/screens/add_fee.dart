import 'package:flutter/material.dart';
import 'package:school_management_system/models/class_model.dart';

class AddFeeScreen extends StatefulWidget {
  const AddFeeScreen({super.key});

  @override
  State<AddFeeScreen> createState() => _AddFeeScreenState();
}

class _AddFeeScreenState extends State<AddFeeScreen> {
  TextEditingController feeC = TextEditingController();
  int? selectedClassId;
  List<SClass> clist = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 30),
              const Text(
                'Add Fee',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 10),
              DropdownButtonHideUnderline(
                child: DropdownButton(
                  hint: const Text('select class'),
                  isExpanded: true,
                  items: clist
                      .map((e) =>
                          DropdownMenuItem(value: e.id, child: Text(e.name!)))
                      .toList(),
                  value: selectedClassId,
                  onChanged: (value) {
                    selectedClassId = value;
                    setState(() {});
                  },
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: feeC,
                decoration:
                    const InputDecoration(hintText: 'Enter Fee Amount....'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  print(feeC.text);
                  print(selectedClassId);
                },
                child: const Text('Add Fee'),
              ),
              // const SizedBox(height: 20),
              // Expanded(
              //   child: DataTable(
              //     dividerThickness: 3,
              //     columns: const [
              //       DataColumn(label: Text('Sr.NO')),
              //       DataColumn(label: Text('class name')),
              //       DataColumn(label: Text('class Fee')),
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
