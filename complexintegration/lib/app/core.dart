import 'package:complexintegration/services/api_service.dart';

abstract class Core {
  static final APIService _service = APIService();
  static APIService get service => _service;
}
