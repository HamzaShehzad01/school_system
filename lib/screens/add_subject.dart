import 'package:flutter/material.dart';
import 'package:school_management_system/models/class_model.dart';

class AddSubjectScreen extends StatefulWidget {
  const AddSubjectScreen({super.key});

  @override
  State<AddSubjectScreen> createState() => _AddSubjectScreenState();
}

class _AddSubjectScreenState extends State<AddSubjectScreen> {
  int? selectedClassId;
  List<SClass> clist = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getClass();
  }

  getClass() {}
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
                'Add Subject',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 10),
              DropdownButtonHideUnderline(
                child: DropdownButton(
                  isExpanded: true,
                  hint: const Text('select class'),
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
                // controller: ,
                decoration:
                    const InputDecoration(hintText: 'Enter Subject....'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Add Subject'),
              ),
              const SizedBox(height: 20),
              // Expanded(
              //   child: DataTable(
              //     dividerThickness: 3,
              //     columns: const [
              //       DataColumn(label: Text('Sr.No')),
              //       DataColumn(label: Text('class')),
              //       DataColumn(label: Text('Subject')),
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
