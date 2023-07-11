class Student {
  int? id;
  String? name;
  DateTime? dob;
  String? gender;
  String? mobile;
  String? address;
  int? classId;
  Student({
    this.id,
    this.name,
    this.dob,
    this.gender,
    this.mobile,
    this.address,
    this.classId,
  });
  Student.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    dob = map['dob'];
    gender = map['gender'];
    mobile = map['mobile'];
    address = map['address'];
    classId = map['classId'];
  }
  toMap() {
    return {
      'name': name,
      'dob': dob,
      'gender': gender,
      'mobile': mobile,
      'address': address,
      'classId': classId,
    };
  }
}
