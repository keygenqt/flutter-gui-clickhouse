import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gui_clickhouse/base/di/app_di.dart';
import 'package:flutter_gui_clickhouse/components/base/export.dart';
import 'package:flutter_gui_clickhouse/pages/connect/model.dart';
import 'package:flutter_gui_clickhouse/theme/colors.dart';
import 'package:flutter_gui_clickhouse/theme/radius.dart';
import 'package:scoped_model/scoped_model.dart';

/// Main connect screen
class ConnectScreen extends StatefulWidgetApp {
  const ConnectScreen({
    super.key,
  });

  @override
  State<ConnectScreen> createState() => _ConnectScreenState();
}

class _ConnectScreenState extends StateApp<ConnectScreen> {
  int _indexMenu = 0;

  @override
  Widget buildWide(
    BuildContext context,
    AppLocalizations l10n,
  ) {
    return ScopedModel<ConnectModel>(
      model: getIt<ConnectModel>(),
      child: ScopedModelDescendant<ConnectModel>(
        builder: (context, child, model) {
          return Scaffold(
            body: Row(
              children: [
                Flexible(
                  flex: 0,
                  child: Stack(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              color: AppColors.background,
                              width: 14,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: _indexMenu == 0
                                ? const BoxDecoration(
                                    color: AppColors.background,
                                    border: Border(
                                      left: BorderSide(
                                        color: AppColors.primary,
                                        width: 14,
                                      ),
                                    ),
                                  )
                                : const BoxDecoration(
                                    border: Border(
                                      left: BorderSide(
                                        color: AppColors.background,
                                        width: 14,
                                      ),
                                    ),
                                  ),
                            child: IconButton(
                              onPressed: () => setState(() {
                                _indexMenu = 0;
                              }),
                              icon: Icon(
                                Icons.dataset,
                                color: _indexMenu == 0 ? AppColors.primary : AppColors.backgroundDark,
                                size: 34,
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 13),
                              style: TextButton.styleFrom(
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                              ),
                              isSelected: _indexMenu == 0,
                            ),
                          ),
                          Container(
                            decoration: _indexMenu == 1
                                ? const BoxDecoration(
                                    color: AppColors.background,
                                    border: Border(
                                      left: BorderSide(
                                        color: AppColors.primary,
                                        width: 14,
                                      ),
                                    ),
                                  )
                                : const BoxDecoration(
                                    border: Border(
                                      left: BorderSide(
                                        color: AppColors.background,
                                        width: 14,
                                      ),
                                    ),
                                  ),
                            child: IconButton(
                              onPressed: () => setState(() {
                                _indexMenu = 1;
                              }),
                              icon: Icon(
                                Icons.stacked_bar_chart,
                                color: _indexMenu == 1 ? AppColors.primary : AppColors.backgroundDark,
                                size: 34,
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 13),
                              style: TextButton.styleFrom(
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                              ),
                              isSelected: _indexMenu == 1,
                            ),
                          ),
                          Container(
                            decoration: _indexMenu == 2
                                ? const BoxDecoration(
                                    color: AppColors.background,
                                    border: Border(
                                      left: BorderSide(
                                        color: AppColors.primary,
                                        width: 14,
                                      ),
                                    ),
                                  )
                                : const BoxDecoration(
                                    border: Border(
                                      left: BorderSide(
                                        color: AppColors.background,
                                        width: 14,
                                      ),
                                    ),
                                  ),
                            child: IconButton(
                              onPressed: () => setState(() {
                                _indexMenu = 2;
                              }),
                              icon: Icon(
                                Icons.table_rows,
                                color: _indexMenu == 2 ? AppColors.primary : AppColors.backgroundDark,
                                size: 34,
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 13),
                              style: TextButton.styleFrom(
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                              ),
                              isSelected: _indexMenu == 2,
                            ),
                          ),
                          Container(
                            decoration: _indexMenu == 3
                                ? const BoxDecoration(
                                    color: AppColors.background,
                                    border: Border(
                                      left: BorderSide(
                                        color: AppColors.primary,
                                        width: 14,
                                      ),
                                    ),
                                  )
                                : const BoxDecoration(
                                    border: Border(
                                      left: BorderSide(
                                        color: AppColors.background,
                                        width: 14,
                                      ),
                                    ),
                                  ),
                            child: IconButton(
                              onPressed: () => setState(() {
                                _indexMenu = 3;
                              }),
                              icon: Icon(
                                Icons.settings,
                                color: _indexMenu == 3 ? AppColors.primary : AppColors.backgroundDark,
                                size: 34,
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 13),
                              style: TextButton.styleFrom(
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                              ),
                              isSelected: _indexMenu == 3,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                left: BorderSide(
                                  color: AppColors.background,
                                  width: 14,
                                ),
                              ),
                            ),
                            child: IconButton(
                              onPressed: () => Navigator.of(context).pop(),
                              icon: const Icon(
                                Icons.exit_to_app,
                                color: AppColors.backgroundDark,
                                size: 34,
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 13),
                              style: TextButton.styleFrom(
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    color: AppColors.background,
                    height: double.infinity,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                        child: Column(
                          children: [
                            for (int i = 0; i < 30; i++)
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: AppRadius.small,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Text(
                                          'item: $i',
                                          style: Theme.of(context).textTheme.titleLarge,
                                        ),
                                      ),
                                    ),
                                  ))
                          ],
                        ),
                      ),
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
