import 'package:flutter_gui_clickhouse/pages/auth/model.dart';
import 'package:flutter_gui_clickhouse/pages/connect/model.dart';
import 'package:flutter_gui_clickhouse/pages/home/model.dart';
import 'package:get_it/get_it.dart';

/// Initialization factory DI
void setupFactoryDI(GetIt getIt) {
  getIt.registerFactory<HomeModel>(() => HomeModel());
  getIt.registerFactory<AuthModel>(() => AuthModel());
  getIt.registerFactory<ConnectModel>(() => ConnectModel());
}
