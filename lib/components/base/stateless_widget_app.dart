import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

abstract class StatelessWidgetApp extends StatelessWidget {
  const StatelessWidgetApp({super.key});

  Widget buildWide(
      BuildContext context,
      AppLocalizations l10n,
      );

  @override
  Widget build(BuildContext context) => buildWide(
    context,
    AppLocalizations.of(context)!,
  );
}
