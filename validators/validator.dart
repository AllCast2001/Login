class Validators {
  static bool isValidEmail(String email) {
    return RegExp(r"^[a-zA-Z0-9._%+-]+@unah\.(edu\.hn|hn)$").hasMatch(email);
  }

  static bool isValidPhone(String phone) {
    return RegExp(r"^[39]\d{7}$").hasMatch(phone);
  }

  static bool isValidPassword(String password) {
    return password.length >= 8 &&
        RegExp(r"^(?=.*[A-Z])(?=.*[!@#$%^&*])").hasMatch(password);
  }
}
