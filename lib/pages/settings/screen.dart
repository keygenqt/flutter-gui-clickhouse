import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gui_clickhouse/base/di/app_di.dart';
import 'package:flutter_gui_clickhouse/components/base/export.dart';
import 'package:flutter_gui_clickhouse/theme/colors.dart';
import 'package:scoped_model/scoped_model.dart';

import 'model.dart';

/// Main connect screen
class SettingsScreen extends StatefulWidgetApp {
  const SettingsScreen({
    super.key,
  });

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends StateApp<SettingsScreen> {
  @override
  Widget buildWide(
    BuildContext context,
    AppLocalizations l10n,
  ) {
    return ScopedModel<SettingsModel>(
      model: getIt<SettingsModel>(),
      child: ScopedModelDescendant<SettingsModel>(
        builder: (context, child, model) {
          return Scaffold(
            body: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    color: AppColors.background,
                    height: double.infinity,
                    child: Column(
                      children: [
                        Flexible(
                          flex: 0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
                            child: SizedBox(
                              width: double.infinity,
                              child: Text(
                                'Settings',
                                style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w300),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
