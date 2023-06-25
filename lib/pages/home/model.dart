import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

/// Model for [HomeScreen]
class HomeModel extends Model {
  /// Get [ScopedModel]
  static HomeModel of(BuildContext context) => ScopedModel.of<HomeModel>(context);
}
