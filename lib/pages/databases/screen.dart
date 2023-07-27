import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gui_clickhouse/base/di/app_di.dart';
import 'package:flutter_gui_clickhouse/components/base/export.dart';
import 'package:flutter_gui_clickhouse/pages/databases/widgets/connection_info.dart';
import 'package:flutter_gui_clickhouse/pages/databases/widgets/databases_list.dart';
import 'package:flutter_gui_clickhouse/theme/colors.dart';
import 'package:scoped_model/scoped_model.dart';

import 'model.dart';

/// Main connect screen
class DatabasesScreen extends StatefulWidgetApp {
  const DatabasesScreen({
    super.key,
  });

  @override
  State<DatabasesScreen> createState() => _DatabasesScreenState();
}

class _DatabasesScreenState extends StateApp<DatabasesScreen> {
  @override
  Widget buildWide(
    BuildContext context,
    AppLocalizations l10n,
  ) {
    return ScopedModel<DatabasesModel>(
      model: getIt<DatabasesModel>(),
      child: ScopedModelDescendant<DatabasesModel>(
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
                                  'Databases',
                                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w300),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                          ),
                          const Flexible(
                            flex: 1,
                            child: DatabasesList(),
                          ),
                        ],
                      )),
                ),
                const Flexible(
                  flex: 0,
                  child: ConnectionInfo(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
