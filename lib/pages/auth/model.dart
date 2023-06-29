import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

/// Model for [AuthScreen]
class AuthModel extends Model {
  /// Get [ScopedModel]
  static AuthModel of(BuildContext context) => ScopedModel.of<AuthModel>(context);
}
