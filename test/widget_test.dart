// import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:burb/ui/nocontent.dart';
import 'package:burb/main.dart';

void main() {
  testWidgets('Main page', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.byType(NoContent), findsOneWidget);

    //   // Verify that our counter starts at 0.
    //   expect(find.text('0'), findsOneWidget);
    //   expect(find.text('1'), findsNothing);

    //   // Tap the '+' icon and trigger a frame.
    //   await tester.tap(find.byIcon(Icons.add));
    //   await tester.pump();

    //   // Verify that our counter has incremented.
    //   expect(find.text('0'), findsNothing);
    //   expect(find.text('1'), );
  });
}
