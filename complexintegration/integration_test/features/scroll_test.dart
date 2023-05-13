import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:complexintegration/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group(
    'scroll screen test',
    () {
      final Finder scrollAB = find.byKey(const Key('nav-to-scroll-scr'));
      final scrollInitialResults = find.byKey(const Key('test-one'));
      final scrollFinalResults = find.byKey(const Key('test-fifty'));

      testWidgets(
        'check first element and last element is present in list',
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
          expect(scrollInitialResults, findsOneWidget);

          await tester.scrollUntilVisible(scrollFinalResults, 300);

          // Check the final count
          await tester.pumpAndSettle();
          expect(scrollFinalResults, findsOneWidget);
        },
      );

      tearDownAll(() => null);
    },
  );
}
