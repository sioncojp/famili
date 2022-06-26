import 'package:flutter/material.dart';
import './production.dart';
import './staging.dart';
import './development.dart';

abstract class BaseConfig {
  String get apiUrl;
}

class Environment {
  factory Environment() {
    return _singleton;
  }
  Environment._internal();

  static final Environment _singleton = Environment._internal();

  static const String development = 'development';
  static const String staging = 'staging';
  static const String production = 'production';

  late BaseConfig config;

  initConfig(String environment) {
    config = _getConfig(environment);
  }

  BaseConfig _getConfig(String environment) {
    switch (environment) {
      case Environment.production:
        return ProductionConfig();
      case Environment.staging:
        return StagingConfig();
      default:
        return DevelopmentConfig();
    }
  }
}