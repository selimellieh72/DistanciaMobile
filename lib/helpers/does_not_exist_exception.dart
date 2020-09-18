class DoesNotExistException implements Exception {
  final String message;

  DoesNotExistException(this.message);
  @override
  String toString() {
    return message;
  }
}
