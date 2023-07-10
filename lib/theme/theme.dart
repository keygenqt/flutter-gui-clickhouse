import 'package:flutter/material.dart';
import 'package:flutter_gui_clickhouse/theme/colors.dart';
import 'package:flutter_gui_clickhouse/theme/radius.dart';

final defaultTheme = ThemeData.light(useMaterial3: true);

final appTheme = defaultTheme.copyWith(
  colorScheme: defaultTheme.colorScheme.copyWith(
    primary: AppColors.primary,
    secondary: AppColors.secondary,
  ),
  scrollbarTheme: defaultTheme.scrollbarTheme.copyWith(
    thumbVisibility: MaterialStateProperty.all<bool>(true),
  ),
  cardTheme: defaultTheme.cardTheme.copyWith(
    color: Colors.white,
    elevation: 0,
  ),
  inputDecorationTheme: defaultTheme.inputDecorationTheme.copyWith(
    border: const OutlineInputBorder(
      gapPadding: 2,
    ),
  ),
  dialogTheme: defaultTheme.dialogTheme.copyWith(
    backgroundColor: Colors.white,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: AppRadius.medium,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
    ),
  ),
  // https://api.flutter.dev/flutter/material/TextTheme-class.html
  textTheme: defaultTheme.textTheme,
);
