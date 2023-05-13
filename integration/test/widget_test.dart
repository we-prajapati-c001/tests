import 'package:flutter_test/flutter_test.dart';

import 'package:integration/app/app.dart';

void main() {
  group('end-to-end widget test', () {
    testWidgets('smoke test', (WidgetTester tester) async {
      await tester.pumpWidget(const App());
      expect(true, true);
    });
  });
}
