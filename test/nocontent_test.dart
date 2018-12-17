import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:burb/ui/nocontent.dart';

void main() {
  testWidgets('Renders NoContent', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: NoContent()),
    );

    expect(find.byType(SvgPicture), findsOneWidget);
    expect(find.text('No birbing'), findsOneWidget);
  });
}
