import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gui_clickhouse/base/di/app_di.dart';
import 'package:flutter_gui_clickhouse/components/base/export.dart';
import 'package:flutter_gui_clickhouse/theme/colors.dart';
import 'package:flutter_gui_clickhouse/theme/radius.dart';
import 'package:scoped_model/scoped_model.dart';

import 'model.dart';

/// Main connect screen
class StatsScreen extends StatefulWidgetApp {
  const StatsScreen({
    super.key,
  });

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends StateApp<StatsScreen> {
  @override
  Widget buildWide(
    BuildContext context,
    AppLocalizations l10n,
  ) {
    return ScopedModel<StatsModel>(
      model: getIt<StatsModel>(),
      child: ScopedModelDescendant<StatsModel>(
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
                                'Stats',
                                style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w300),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.transparent,
                            width: double.infinity,
                            child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 40),
                                child: Column(
                                  children: [
                                    Flexible(
                                      flex: 0,
                                      child: Row(
                                        children: [
                                          Flexible(
                                              flex: 1,
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: Card(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: AppRadius.medium,
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                                                    child: Center(
                                                      child: Text(
                                                        'Chart 1',
                                                        style: Theme.of(context).textTheme.titleLarge,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )),
                                          const SizedBox(width: 35),
                                          Flexible(
                                              flex: 1,
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: Card(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: AppRadius.medium,
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                                                    child: Center(
                                                      child: Text(
                                                        'Chart 2',
                                                        style: Theme.of(context).textTheme.titleLarge,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )),
                                          const SizedBox(width: 35),
                                          Flexible(
                                              flex: 1,
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: Card(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: AppRadius.medium,
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                                                    child: Center(
                                                      child: Text(
                                                        'Chart 3',
                                                        style: Theme.of(context).textTheme.titleLarge,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 35),
                                    Flexible(
                                        flex: 1,
                                        child: SizedBox(
                                          width: double.infinity,
                                          height: double.infinity,
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: AppRadius.medium,
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                                              child: Center(
                                                child: Text(
                                                  'Chart 4',
                                                  style: Theme.of(context).textTheme.titleLarge,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )),
                                    const SizedBox(height: 40),
                                  ],
                                )),
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
