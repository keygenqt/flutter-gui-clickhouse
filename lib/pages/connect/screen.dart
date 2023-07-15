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

  IconData getIcon(int index) {
    switch (index) {
      case 0:
        return Icons.dataset;
      case 1:
        return Icons.table_rows;
      case 2:
        return Icons.stacked_bar_chart;
    }
    return Icons.settings;
  }

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
                        color: AppColors.background,
                        width: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Column(
                          children: [
                            for (int i = 0; i < 4; i++)
                              Container(
                                alignment: Alignment.centerLeft,
                                decoration: _indexMenu == i
                                    ? BoxDecoration(
                                        color: _indexMenu == i ? AppColors.primary.withOpacity(0.8) : Colors.white,
                                        border: Border(
                                          left: BorderSide(
                                            color: _indexMenu == i ? AppColors.primaryDark : AppColors.background,
                                            width: 5,
                                          ),
                                        ),
                                      )
                                    : null,
                                child: IconButton(
                                  color: _indexMenu == i ? Colors.white : AppColors.primary,
                                  onPressed: () => setState(() {
                                    _indexMenu = i;
                                  }),
                                  icon: Padding(
                                    padding:
                                        _indexMenu == i ? const EdgeInsets.only(left: 0, right: 5) : const EdgeInsets.only(left: 2.5, right: 2.5),
                                    child: Icon(
                                      getIcon(i),
                                      size: 30,
                                    ),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: _indexMenu == i ? 30 : 32.5, vertical: 13),
                                  style: TextButton.styleFrom(
                                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                                  ),
                                  isSelected: _indexMenu == i,
                                ),
                              ),
                            const Spacer(),
                            IconButton(
                              onPressed: () => Navigator.of(context).pop(),
                              icon: const Icon(
                                Icons.exit_to_app,
                                size: 30,
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 13),
                              style: TextButton.styleFrom(
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
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
                                  'Databases',
                                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w300),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 40),
                                child: SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 40, right: 26),
                                    child: Column(
                                      children: [
                                        for (int i = 0; i < 25; i++)
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 10),
                                            child: SizedBox(
                                              width: double.infinity,
                                              child: Card(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: AppRadius.small,
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(10),
                                                  child: Text(
                                                    'item: $i',
                                                    style: Theme.of(context).textTheme.titleLarge,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        const SizedBox(height: 30),
                                        const CircularProgressIndicator(),
                                        const SizedBox(height: 2),
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                        ],
                      )),
                ),
                Flexible(
                  flex: 0,
                  child: Container(
                    width: 350,
                    height: double.infinity,
                    color: AppColors.background,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 13, top: 40, right: 15, bottom: 40),
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 24),
                              child: Column(
                                children: [
                                  Card(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 15),
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                                            width: double.infinity,
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Colors.green,
                                                  width: 5,
                                                ),
                                              ),
                                            ),
                                            child: Text(
                                              'Database server'.toUpperCase(),
                                              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: double.infinity,
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 25, top: 10, right: 25, bottom: 25),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Derver: Localhost via UNIX socket',
                                                  style: Theme.of(context).textTheme.bodyMedium,
                                                ),
                                                const SizedBox(height: 5),
                                                Text(
                                                  'Server type: MySQL',
                                                  style: Theme.of(context).textTheme.bodyMedium,
                                                ),
                                                const SizedBox(height: 5),
                                                Text(
                                                  'Server version: 8.0.33-0ubuntu0',
                                                  style: Theme.of(context).textTheme.bodyMedium,
                                                ),
                                                const SizedBox(height: 5),
                                                Text(
                                                  'Protocol version: 10',
                                                  style: Theme.of(context).textTheme.bodyMedium,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Card(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 15),
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                                            width: double.infinity,
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Colors.cyan,
                                                  width: 5,
                                                ),
                                              ),
                                            ),
                                            child: Text(
                                              'Web server'.toUpperCase(),
                                              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: double.infinity,
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 25, top: 10, right: 25, bottom: 25),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'nginx/1.18.0',
                                                  style: Theme.of(context).textTheme.bodyMedium,
                                                ),
                                                const SizedBox(height: 5),
                                                Text(
                                                  'Database client: 8.1.2-1ubuntu2.13',
                                                  style: Theme.of(context).textTheme.bodyMedium,
                                                ),
                                                const SizedBox(height: 5),
                                                Text(
                                                  'Extension: mysqli',
                                                  style: Theme.of(context).textTheme.bodyMedium,
                                                ),
                                                const SizedBox(height: 5),
                                                Text(
                                                  'Version: 8.1.2',
                                                  style: Theme.of(context).textTheme.bodyMedium,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(40),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: FloatingActionButton(
                              onPressed: () {
                                // Add your onPressed code here!
                              },
                              child: const Icon(Icons.add),
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
