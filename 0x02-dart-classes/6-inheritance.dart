import '6-password.dart';

class User extends Password {
  // field
  String? name;
  int? age;
  double? height;
  int? id;
  String user_password = '';

  User({id, name, age, height, user_password})
      : super(password: user_password) {
    this.name = name;
    this.age = age;
    this.height = height;
    this.id = id;
    this.user_password = user_password;
  }

  Map toJson() {
    return {'id': id, 'name': name, 'age': age, 'height': height};
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
        id: userJson['id'],
        name: userJson['name'],
        age: userJson['age'],
        height: userJson['height'],
        user_password: '');
  }

  @override
  String toString() {
    final pass = new Password(password: this.user_password);
    return 'User(id : ${this.id} ,name: ${this.name}, age: ${this.age}, height: ${this.height}, Password: ${pass.isValid()})';
  }
}
