import 'package:flutter_gui_clickhouse/base/config/build_config.dart';
import 'package:get_it/get_it.dart';

/// Initialization singleton DI
void setupSingletonDI(GetIt getIt, BuildConfig config) {
  getIt.registerSingleton(config);
}