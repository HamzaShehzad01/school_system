import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:school_management_system/models/class_model.dart';

class AddTeacherScreen extends StatefulWidget {
  const AddTeacherScreen({super.key});

  @override
  State<AddTeacherScreen> createState() => _AddTeacherScreenState();
}

class _AddTeacherScreenState extends State<AddTeacherScreen> {
  TextEditingController nameC = TextEditingController();
  TextEditingController mobileC = TextEditingController();
  TextEditingController emialC = TextEditingController();
  TextEditingController passC = TextEditingController();
  TextEditingController addC = TextEditingController();
  int? selectedClassId;
  String? selected;
  List<SClass> clist = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 30),
                const Text(
                  'Add Teacher',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: nameC,
                  decoration: const InputDecoration(
                    hintText: 'Enter Name',
                  ),
                ),
                ElevatedButton(
                    onPressed: () async {
                      var datePicked = await DatePicker.showSimpleDatePicker(
                        context,
                        firstDate: DateTime(1970),
                        lastDate: DateTime(2010),
                        initialDate: DateTime(1980),
                        dateFormat: "dd-MMMM-yyyy",
                        //locale: DateTimePickerLocale.th,
                        looping: true,
                        textColor: Colors.purple,
                      );
                      print(datePicked);
                    },
                    child: const Text('Date of Birth')),
                TextFormField(
                  controller: mobileC,
                  decoration: const InputDecoration(
                    hintText: 'Enter Mobile',
                  ),
                ),
                TextFormField(
                  controller: emialC,
                  decoration: const InputDecoration(
                    hintText: 'Enter Email',
                  ),
                ),
                TextFormField(
                  controller: passC,
                  decoration: const InputDecoration(
                    hintText: 'Enter Password',
                  ),
                ),

                Row(
                  children: [
                    Expanded(
                      child: RadioListTile(
                        title: const Text('Male'),
                        value: 'Male',
                        groupValue: selected,
                        onChanged: (value) {
                          selected = value;
                          setState(() {});
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        title: const Text('Female'),
                        value: 'Female',
                        groupValue: selected,
                        onChanged: (value) {
                          selected = value;
                          setState(() {});
                        },
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: addC,
                  maxLines: 5,
                  decoration: const InputDecoration(
                    hintText: 'Enter Address',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    print(nameC.text);
                    print(emialC.text);
                    print(passC.text);
                    print(mobileC.text);
                    print(addC.text);
                  },
                  child: const Text('Add Teacher'),
                ),
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
      ),
    );
  }
}



/**DropdownButtonHideUnderline(
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
                ), */