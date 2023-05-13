// Import the test package and Counter class
import 'package:complexintegration/services/api_service.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mockito/mockito.dart';

class MockAPIService extends Mock implements APIService {}

void main() {
  group('API ', () {
    test('initial data', () async {
      const initialData = null;
      final apiService = APIService();

      expect(apiService.data, initialData);
    });

    test('fetch data', () async {
      const data = 'test';

      final mockAPIService = MockAPIService();
      when(mockAPIService.fetchData()).thenAnswer(
        (_) => Future.value(data),
      );
      await mockAPIService.fetchData();

      expect(mockAPIService.data, data);
    });

    test('set data', () async {
      const String testData = 'test';

      final apiService = APIService();
      await apiService.setData(testData);

      expect(apiService.data, testData);
    });
  });

  tearDownAll(() => null);
}
