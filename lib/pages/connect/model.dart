import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

/// Model for [ConnectScreen]
class ConnectModel extends Model {
  /// Get [ScopedModel]
  static ConnectModel of(BuildContext context) => ScopedModel.of<ConnectModel>(context);
}
