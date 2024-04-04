import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_example/counter.dart';

void main() {
  group('Counter', () {
    test('starts with 0', () {
      final counter = Counter();
      expect(counter.value, 0);
    });

    test('increments value', () {
      final counter = Counter();
      counter.increment();
      expect(counter.value, 1);
    });

    test('decrements value', () {
      final counter = Counter();
      counter.decrement();
      expect(counter.value, -1);
    });
  });
}
