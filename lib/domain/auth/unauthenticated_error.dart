class UnauthenticatedError extends Error {
  @override
  String toString() {
    final message =
        'You are trying to perform some actions that are specific to authenticated users. Terminating...';
    return message;
  }
}
