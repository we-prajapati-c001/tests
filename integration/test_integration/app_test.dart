import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:integration/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group(
    'end-to-end test',
    () {
      final Finder incrementAB = find.byKey(const Key('increment'));
      final Finder decrementAB = find.byKey(const Key('decrement'));

      testWidgets(
        'tap on the increment action button, verify counter',
        (tester) async {
          final Finder initialCount = find.text('0');
          final Finder finalCount = find.text('1');

          // Start the application
          app.main();
          await tester.pumpAndSettle();

          // Check initial count
          expect(initialCount, findsOneWidget);

          // increase the count
          await tester.tap(incrementAB);

          // Check the final count
          await tester.pumpAndSettle();
          expect(finalCount, findsOneWidget);
        },
      );

      testWidgets(
        'tap on the decrement action button, verify counter',
        (tester) async {
          final Finder initialCount = find.text('0');
          final Finder finalCount = find.text('-1');

          // Start the application
          app.main();
          await tester.pumpAndSettle();

          // Check initial count
          expect(initialCount, findsOneWidget);

          // increase the count
          await tester.tap(decrementAB);

          // Check the final count
          await tester.pumpAndSettle();
          expect(finalCount, findsOneWidget);
        },
      );
    },
  );
}
