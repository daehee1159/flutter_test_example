import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_example/main.dart';

void main() {
  testWidgets('Counter App UI Test', (WidgetTester tester) async {
    // 빌드하고 화면을 렌더링합니다.
    await tester.pumpWidget(const MyApp());

    // "Count:" 텍스트가 화면에 표시되는지 확인합니다.
    expect(find.text('Count:'), findsOneWidget);

    // 카운터 초기 값이 0인지 확인합니다.
    expect(find.text('0'), findsOneWidget);

    // "+" FloatingActionButton이 화면에 표시되는지 확인합니다.
    expect(find.byIcon(Icons.add), findsOneWidget);

    // "-" FloatingActionButton이 화면에 표시되는지 확인합니다.
    expect(find.byIcon(Icons.remove), findsOneWidget);
  });

  testWidgets('Counter App Increment Test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // "+" 버튼을 탭합니다.
    await tester.tap(find.byIcon(Icons.add));

    // 화면을 다시 그리고, 카운터 값이 1인지 확인합니다.
    await tester.pump();

    expect(find.text('1'), findsOneWidget);
  });

  testWidgets('Counter App Decrement Test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // "-" 버튼을 탭합니다.
    await tester.tap(find.byIcon(Icons.remove));

    // 화면을 다시 그리고, 카운터 값이 -1인지 확인합니다.
    await tester.pump();

    expect(find.text('-1'), findsOneWidget);
  });
}
