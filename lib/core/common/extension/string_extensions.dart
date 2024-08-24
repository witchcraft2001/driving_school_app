extension StringExtensions on String {
  int parseHex({int defaultValue = 0}) {
    if (isEmpty) return defaultValue;
    try {
      final str = startsWith('#')
          ? substring(1)
          : toUpperCase().startsWith('0X')
              ? substring(2)
              : this;
      return int.parse(str, radix: 16);
    } catch (_) {
      return defaultValue;
    }
  }
}
