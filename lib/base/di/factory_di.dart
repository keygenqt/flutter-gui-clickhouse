import 'package:flutter_gui_clickhouse/pages/connection/model.dart';
import 'package:flutter_gui_clickhouse/pages/databases/model.dart';
import 'package:flutter_gui_clickhouse/pages/home/model.dart';
import 'package:flutter_gui_clickhouse/pages/settings/model.dart';
import 'package:flutter_gui_clickhouse/pages/stats/model.dart';
import 'package:get_it/get_it.dart';

/// Initialization factory DI
void setupFactoryDI(GetIt getIt) {
  getIt.registerFactory<HomeModel>(() => HomeModel());
  getIt.registerFactory<ConnectionModel>(() => ConnectionModel());
  getIt.registerFactory<DatabasesModel>(() => DatabasesModel());
  getIt.registerFactory<SettingsModel>(() => SettingsModel());
  getIt.registerFactory<StatsModel>(() => StatsModel());
}
