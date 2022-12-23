class ValueRange<T extends num> {
  final T min;
  final T max;

  const ValueRange(this.min, this.max);

  bool fitsInRange(T value) {
    return compareToRange(value) == 0;
  }

  /// Compares the value to the range
  ///
  /// Return 0 if it fits in the range, 1 if it is higher than the range and -1
  /// if it is lower.
  int compareToRange(T value) {
    if (value > max) {
      return 1;
    }
    if (value <= min) {
      return -1;
    }
    return 0;
  }
}
