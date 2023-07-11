class Subject {
  int? id;
  String? subName;
  int? classId;

  Subject({this.id, this.subName, this.classId});

  Subject.fromMap(Map<String, dynamic> map) {
    id = map["id"];
    subName = map["name"];
    classId = map['classId'];
  }
  Map<String, dynamic> toMap() {
    return {'name': subName, 'classId': classId};
  }
}
