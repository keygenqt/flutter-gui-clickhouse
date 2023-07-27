import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

/// Model for [StatsScreen]
class StatsModel extends Model {
  /// Get [ScopedModel]
  static StatsModel of(BuildContext context) => ScopedModel.of<StatsModel>(context);
}
