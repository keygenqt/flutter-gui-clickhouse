import 'package:flutter/material.dart';

/// Extensions for [GlobalKey]
extension ExtGlobalKey on GlobalKey {
  /// Get height by key
  double? getHeight() {
    if (currentContext == null) {
      return null;
    }
    try {
      final box = currentContext!.findRenderObject() as RenderBox;
      return box.size.height;
    } catch (e) {
      return null;
    }
  }

  double? getY() {
    if (currentContext == null) {
      return null;
    }
    try {
      final box = currentContext!.findRenderObject() as RenderBox;
      return box.localToGlobal(Offset.zero).dy;
    } catch (e) {
      return null;
    }
  }
}