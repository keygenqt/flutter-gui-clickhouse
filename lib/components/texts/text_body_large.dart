import 'package:flutter/material.dart';
import 'package:flutter_gui_clickhouse/components/texts/text_base.dart';

class TextBodyLarge extends TextBase {
  const TextBodyLarge(super.data, {
    super.key,
    super.color
  });

  @override
  TextStyle? getStyle(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge;
  }
}