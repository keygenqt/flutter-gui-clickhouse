import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

/// Model for [DatabasesScreen]
class DatabasesModel extends Model {
  /// Get [ScopedModel]
  static DatabasesModel of(BuildContext context) => ScopedModel.of<DatabasesModel>(context);
}
