class WordHelper {
  static bool wordContainsSymbols(String value) {
    return value.contains('1') ||
        value.contains('2') ||
        value.contains('3') ||
        value.contains('4') ||
        value.contains('5') ||
        value.contains('6') ||
        value.contains('7') ||
        value.contains('8') ||
        value.contains('9') ||
        value.contains('.') ||
        value.contains(';') ||
        value.contains('@') ||
        value.contains('!') ||
        value.contains('#') ||
        value.contains('\$') ||
        value.contains('%') ||
        value.contains('^') ||
        value.contains('*') ||
        value.contains('(') ||
        value.contains(')') ||
        value.contains(')') ||
        value.contains('-') ||
        value.contains('_') ||
        value.contains('+') ||
        value.contains('=') ||
        value.contains('/');
  }

  static bool hasUppercase(String word) {
    return word.contains('A') ||
        word.contains('B') ||
        word.contains('C') ||
        word.contains('D') ||
        word.contains('E') ||
        word.contains('F') ||
        word.contains('G') ||
        word.contains('H') ||
        word.contains('I') ||
        word.contains('J') ||
        word.contains('K') ||
        word.contains('L') ||
        word.contains('M') ||
        word.contains('N') ||
        word.contains('O') ||
        word.contains('P') ||
        word.contains('Q') ||
        word.contains('R') ||
        word.contains('S') ||
        word.contains('T') ||
        word.contains('U') ||
        word.contains('V') ||
        word.contains('W') ||
        word.contains('X') ||
        word.contains('Y') ||
        word.contains('Z');
  }
}
