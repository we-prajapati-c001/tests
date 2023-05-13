class APIService {
  String? _data;
  String? get data => _data;

  Future<String?> fetchData() async {
    _data = null;
    return null;
  }

  Future<void> setData(String data) async {
    await Future.delayed(const Duration(seconds: 5));
    _data = data;
  }
}
