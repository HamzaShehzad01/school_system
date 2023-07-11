import 'package:flutter/material.dart';

import '../models/class_model.dart';

class AssignSubjectScreen extends StatefulWidget {
  const AssignSubjectScreen({super.key});

  @override
  State<AssignSubjectScreen> createState() => _AssignSubjectScreenState();
}

class _AssignSubjectScreenState extends State<AssignSubjectScreen> {
  int? selectedClassId;
  int? selectedSubjectId;
  int? selectedTeacherId;
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
              Container(
                padding: const EdgeInsets.only(left: 4, right: 4),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    hint: const Text('select Teacher'),
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
              ElevatedButton(
                onPressed: () {},
                child: const Text('Assign Subject'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
