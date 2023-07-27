import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gui_clickhouse/base/di/app_di.dart';
import 'package:flutter_gui_clickhouse/components/base/export.dart';
import 'package:flutter_gui_clickhouse/components/widgets/menu.dart';
import 'package:flutter_gui_clickhouse/pages/databases/screen.dart';
import 'package:flutter_gui_clickhouse/pages/settings/screen.dart';
import 'package:flutter_gui_clickhouse/pages/stats/screen.dart';
import 'package:flutter_gui_clickhouse/theme/colors.dart';
import 'package:scoped_model/scoped_model.dart';

import 'model.dart';

/// Main connect screen
class ConnectionScreen extends StatefulWidgetApp {
  const ConnectionScreen({
    super.key,
  });

  @override
  State<ConnectionScreen> createState() => _ConnectionScreenState();
}

class _ConnectionScreenState extends StateApp<ConnectionScreen> {
  final _pageController = PageController();

  void _changePage(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  @override
  Widget buildWide(
    BuildContext context,
    AppLocalizations l10n,
  ) {
    return ScopedModel<ConnectionModel>(
      model: getIt<ConnectionModel>(),
      child: ScopedModelDescendant<ConnectionModel>(
        builder: (context, child, model) {
          return Scaffold(
            body: Row(
              children: [
                Flexible(
                  flex: 0,
                  child: MenuWidget(items: [
                    MenuItem(
                      index: 0,
                      icon: Icons.dataset,
                      onPressed: _changePage,
                    ),
                    MenuItem(
                      index: 1,
                      icon: Icons.stacked_bar_chart,
                      onPressed: _changePage,
                    ),
                    MenuItem(
                      index: 2,
                      icon: Icons.settings,
                      onPressed: _changePage,
                    ),
                  ]),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    color: AppColors.background,
                    height: double.infinity,
                    child: PageView(
                      controller: _pageController,
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      children: const [
                        DatabasesScreen(),
                        StatsScreen(),
                        SettingsScreen(),
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
