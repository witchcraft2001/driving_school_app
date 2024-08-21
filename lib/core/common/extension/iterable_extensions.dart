extension IterableExtensions<E> on Iterable<E> {
  E? firstWhereOrNull(bool Function(E element) test) {
    try {
      return firstWhere((element) => test(element));
    } catch (_) {
      return null;
    }
  }

  List<E> toImmutableList() => List<E>.of(this, growable: false);
}
