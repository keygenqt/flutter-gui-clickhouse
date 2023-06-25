import 'package:flutter/material.dart';
import 'package:flutter_gui_clickhouse/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';

final appTheme = ThemeData(
  colorScheme: ThemeData().colorScheme.copyWith(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
      ),

  /// [Text]
  textTheme: TextTheme(
    bodyLarge: GoogleFonts.ubuntu(
      fontSize: 18,
    ),
    bodyMedium: GoogleFonts.ubuntu(
      fontSize: 16,
    ),
    bodySmall: GoogleFonts.ubuntu(
      fontSize: 14,
    ),
  ),
);
