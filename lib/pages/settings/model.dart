import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

/// Model for [SettingsScreen]
class SettingsModel extends Model {
  /// Get [ScopedModel]
  static SettingsModel of(BuildContext context) => ScopedModel.of<SettingsModel>(context);
}
