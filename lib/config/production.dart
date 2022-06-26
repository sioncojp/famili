import './config.dart';

class ProductionConfig implements BaseConfig {
  @override
  String get apiUrl => "api.famili.jp";
}