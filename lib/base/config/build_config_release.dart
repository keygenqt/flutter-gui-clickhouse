import 'package:flutter_gui_clickhouse/base/config/build_config.dart';
import 'package:flutter_gui_clickhouse/base/config/build_type.dart';

class BuildConfigRelease implements BuildConfig {
  @override
  BuildType get type => BuildType.release;
}