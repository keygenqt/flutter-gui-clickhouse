import 'package:flutter_gui_clickhouse/pages/home/model.dart';
import 'package:get_it/get_it.dart';

/// Initialization factory DI
void setupFactoryDI(GetIt getIt) {
  getIt.registerFactory<HomeModel>(() => HomeModel());
}
