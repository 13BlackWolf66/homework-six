import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:hw_5/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group(
    'UI',
    () {
        testWidgets(
        'After entering 10 symbols and incorrect password',
        (widgetTester) async {
          app.main();
          await widgetTester.pumpAndSettle();
          await widgetTester.enterText(
              find.byType(TextField), '1234567890');
          await widgetTester.pumpAndSettle();         
          final textElement = find.text('Password must meet at least 3 out of 4 criteria');
          expect(textElement, findsOneWidget);
        },
      );
      testWidgets(
        'After entering correct password by criteria but not 10 symbols',
        (widgetTester) async {
          app.main();
          await widgetTester.pumpAndSettle();
          await widgetTester.enterText(
              find.byType(TextField), 'ДартF/');
          await widgetTester.pumpAndSettle();
          final textElement = find.text('Password must be at least 10 characters long');
          expect(textElement, findsOneWidget);
        },
      );
    },
  );
}