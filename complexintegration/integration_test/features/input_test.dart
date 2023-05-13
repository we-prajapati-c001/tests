import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:complexintegration/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group(
    'input screen test',
    () {
      final Finder inputAB = find.byKey(const Key('nav-to-input-scr'));
      final Finder inputField = find.byKey(const Key('input-field'));
      final Finder submitAB = find.byKey(const Key('submit-button'));
      final Finder submitResult = find.byKey(const Key('submit-results'));

      testWidgets(
        'tap submit without any input',
        (tester) async {
          // Start the application
          app.main();
          await tester.pumpAndSettle();

          // Check initial count
          expect(inputAB, findsOneWidget);

          // increase the count
          await tester.tap(inputAB);

          // Check the final count
          await tester.pumpAndSettle();
          expect(inputField, findsOneWidget);
          expect(submitAB, findsOneWidget);

          await tester.tap(submitAB);

          // Check the final count
          await tester.pumpAndSettle();
          expect(find.text('Invalid input'), findsOneWidget);
          expect(submitResult, findsNothing);
        },
      );

      testWidgets(
        'tap submit with input',
        (tester) async {
          // Start the application
          app.main();
          await tester.pumpAndSettle();

          // Check initial count
          expect(inputAB, findsOneWidget);

          // increase the count
          await tester.tap(inputAB);

          // Check the final count
          await tester.pumpAndSettle();
          expect(inputField, findsOneWidget);
          expect(submitAB, findsOneWidget);

          await tester.enterText(inputField, 'text');
          await tester.tap(submitAB);

          // Check the final count
          await tester.pumpAndSettle();
          expect(find.text('Invalid input'), findsNothing);
          expect(submitResult, findsOneWidget);
        },
      );

      tearDownAll(() => null);
    },
  );
}
