import 'package:flutter/material.dart';
import 'package:flutter_gui_clickhouse/theme/colors.dart';

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
    shadowColor: AppColors.primary.withOpacity(0.7),
    color: Colors.white,
    elevation: 2,
  ),
  inputDecorationTheme: defaultTheme.inputDecorationTheme.copyWith(
    border: const OutlineInputBorder(
      gapPadding: 2,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
    ),
  ),
);
