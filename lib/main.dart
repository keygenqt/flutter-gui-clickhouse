import 'package:flutter/material.dart';
import 'package:flutter_gui_clickhouse/app.dart';
import 'package:flutter_gui_clickhouse/base/config/build_config_debug.dart';
import 'package:flutter_gui_clickhouse/base/di/app_di.dart';

void main() {
  setupDI(BuildConfigDebug());
  runApp(const App());
}
