class Password {
  String _password;
  Password({required String password}) : _password = password;
  String get password {
    return this._password;
  }

  void set password(String password) {
    this._password = password;
  }

  bool isValid() {
    if ((password.length < 8) | (password.length > 16)) {
      return false;
    }
    bool checkUppercase = false;
    bool checkLowercase = false;
    bool checkNumber = false;
    for (int i = 0; i < password.length; i++) {
      if (password[i] == password[i].toUpperCase()) {
        if (double.tryParse(password[i]) == null) {
          checkUppercase = true;
        }
      }
      if (password[i] == password[i].toLowerCase()) {
        checkLowercase = true;
      }
      if (double.tryParse(password[i]) != null) {
        checkNumber = true;
      }
    }
    if (checkUppercase & checkLowercase & checkNumber) {
      return true;
    }
    return false;
  }

  @override
  String toString() {
    return 'Your Password is: ${this.password}';
  }
}
