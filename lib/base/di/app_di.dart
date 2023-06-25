import 'package:flutter_gui_clickhouse/base/config/build_config.dart';
import 'package:flutter_gui_clickhouse/base/di/factory_di.dart';
import 'package:flutter_gui_clickhouse/base/di/singleton_di.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

/// Initialization application DI
void setupDI(BuildConfig config) {
  // singleton
  setupSingletonDI(getIt, config);
  // factory
  setupFactoryDI(getIt);
}
