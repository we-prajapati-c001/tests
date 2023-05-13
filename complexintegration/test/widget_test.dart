import 'package:flutter_test/flutter_test.dart';

import 'package:complexintegration/app/app.dart';

void main() {
  group('end-to-end widget test', () {
    testWidgets('dummy smoke test', (WidgetTester tester) async {
      await tester.pumpWidget(const App());
      expect(true, true);
    });
  });
}
