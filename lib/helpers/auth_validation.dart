import 'word_filtering_helper.dart';

class AuthValidation {
  static String validateEmail(String email) {
    if (email.isEmpty) {
      return 'Please enter an email address.';
    }
    if (!email.contains('@')) {
      return 'Please enter a valid email address.';
    }
    return null;
  }

  static String validateName(String name, bool isFirstName) {
    if (name.isEmpty) {
      if (isFirstName) {
        return 'Please enter a first name.';
      }
      return 'Please enter a last name.';
    }
    if (WordHelper.wordContainsSymbols(name)) {
      if (isFirstName) {
        return 'Please enter a valid first name (Symbols are not allowed).';
      }
      return 'Please enter a valid last name (Symbols are not allowed).';
    }
    return null;
  }

  static String validatePassword(String password) {
    if (password.isEmpty) {
      return 'Please enter a password.';
    }
    if (!WordHelper.hasUppercase(password)) {
      return 'Your password must atleast have one uppercase.';
    }
    if (!WordHelper.wordContainsSymbols(password)) {
      return 'Your password must have at least one symbol.';
    }
    if (password.length <= 6) {
      return 'Your password must be atleast 7 characters long.';
    }
    return null;
  }

  static String validateConfirmPassword(
      String secondPassword, String firstPassword) {
    if (secondPassword != firstPassword) {
      return "Your passwords doesn't match";
    }
    return null;
  }
}
