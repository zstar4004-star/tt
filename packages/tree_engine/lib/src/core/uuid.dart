class UuidGenerator {
  UuidGenerator._();

  static int _counter = 0;

  static String next(String prefix) {
    _counter++;

    return "${prefix}_$_counter";
  }

  static void reset() {
    _counter = 0;
  }
}
