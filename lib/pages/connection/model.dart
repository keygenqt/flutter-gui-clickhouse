import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

/// Model for [ConnectionScreen]
class ConnectionModel extends Model {
  /// Get [ScopedModel]
  static ConnectionModel of(BuildContext context) => ScopedModel.of<ConnectionModel>(context);
}
