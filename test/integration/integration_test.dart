import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test_example/main.dart' as app;

void main() {
  group('Counter App', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    testWidgets('Counter increment test', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // 앱이 시작되었는지 확인
      expect(find.text('Count:'), findsOneWidget);

      // 초기 카운터 값이 0인지 확인
      expect(find.text('0'), findsOneWidget);

      // "+" 버튼을 탭하고 화면 갱신 대기
      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();

      // 카운터 값이 1인지 확인
      expect(find.text('1'), findsOneWidget);
    });

    testWidgets('Counter decrement test', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // 초기 카운터 값이 0인지 확인
      expect(find.text('0'), findsOneWidget);

      // "-" 버튼을 탭하고 화면 갱신 대기
      await tester.tap(find.byIcon(Icons.remove));
      await tester.pumpAndSettle();

      // 카운터 값이 -1인지 확인
      expect(find.text('-1'), findsOneWidget);
    });
  });
}
