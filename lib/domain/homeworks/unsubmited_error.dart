class UnSubmitedError extends Error {
  @override
  String toString() {
    final message =
        'You are trying to submit a homework but have not uploaded a file. Terminating...';
    return message;
  }
}
