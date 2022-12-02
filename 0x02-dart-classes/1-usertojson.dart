class User {
  // field
  String? name;
  int? age;
  double? height;

  User({name, age, height}) {
    this.name = name;
    this.age = age;
    this.height = height;
  }

  Map toJson() {
    return {'name': name, 'age': age, 'height': height};
  }
}
