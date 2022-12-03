class User {
  // field
  String? name;
  int? age;
  double? height;
  int? id;

  User({id, name, age, height}) {
    this.name = name;
    this.age = age;
    this.height = height;
    this.id = id;
  }

  Map toJson() {
    return {'id': id, 'name': name, 'age': age, 'height': height};
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
        id: userJson['id'],
        name: userJson['name'],
        age: userJson['age'],
        height: userJson['height']);
  }

  @override
  String toString() {
    return 'User(id : ${this.id} ,name: ${this.name}, age: ${this.age}, height: ${this.height})';
  }
}
