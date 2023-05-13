import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:complexintegration/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group(
    'home screen test',
    () {
      final Finder scrollAB = find.byKey(const Key('nav-to-scroll-scr'));
      final scrollABResults = find.byKey(const Key('test-one'));

      final Finder inputAB = find.byKey(const Key('nav-to-input-scr'));
      final inputABResults = find.byKey(const Key('input-field'));

      testWidgets(
        'navigate to scroll screen',
        (tester) async {
          // Start the application
          app.main();
          await tester.pumpAndSettle();

          // Check initial count
          expect(scrollAB, findsOneWidget);

          // increase the count
          await tester.tap(scrollAB);

          // Check the final count
          await tester.pumpAndSettle();
          expect(scrollABResults, findsOneWidget);
        },
      );

      testWidgets(
        'navigate to input screen',
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
          expect(inputABResults, findsOneWidget);
        },
      );

      tearDownAll(() => null);
    },
  );
}
