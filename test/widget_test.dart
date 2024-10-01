import 'package:flutter_test/flutter_test.dart';

import 'package:daily_battle/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const DailyBattleApp());

    // Verify that our counter starts at 0.
    expect(find.text('Your Daily Battle is coming!'), findsOneWidget);
  });
}
