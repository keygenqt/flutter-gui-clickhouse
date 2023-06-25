import 'package:flutter/material.dart';

class TextBase extends StatelessWidget {
  const TextBase(this.data, {
    super.key,
    this.color
  });

  final String data;
  final Color? color;

  TextStyle? getStyle(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: getStyle(context)?.copyWith(color: color ?? Colors.black),
    );
  }
}