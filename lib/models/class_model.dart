class SClass {
  int? id;
  String? name;
  SClass({this.id, this.name});

  SClass.fromMap(Map<String, dynamic> map) {
    id = map["id"];
    name = map["name"];
  }
  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }
}
