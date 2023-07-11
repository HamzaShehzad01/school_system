import 'package:flutter/material.dart';

import '../models/class_model.dart';

class AddExpenseScreen extends StatefulWidget {
  const AddExpenseScreen({super.key});

  @override
  State<AddExpenseScreen> createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  int? selectedClassId;
  int? selectedSubjectId;
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
              Container(
                padding: const EdgeInsets.only(left: 4, right: 4),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5)),
                child: DropdownButtonHideUnderline(
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
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.only(left: 4, right: 4),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    hint: const Text('select Subject'),
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
              ),
              const SizedBox(height: 10),
              TextFormField(
                // controller: nameC,
                decoration: const InputDecoration(
                  hintText: 'Add Charge Amount',
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Add Expense'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
