import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gui_clickhouse/base/di/app_di.dart';
import 'package:flutter_gui_clickhouse/components/base/export.dart';
import 'package:flutter_gui_clickhouse/pages/home/model.dart';
import 'package:flutter_gui_clickhouse/pages/home/widgets/home_connect_actions.dart';
import 'package:flutter_gui_clickhouse/pages/home/widgets/home_connect_list.dart';
import 'package:flutter_gui_clickhouse/pages/home/widgets/home_info.dart';
import 'package:flutter_gui_clickhouse/pages/home/widgets/home_liinks.dart';
import 'package:flutter_gui_clickhouse/pages/home/widgets/home_logo.dart';
import 'package:flutter_gui_clickhouse/theme/colors.dart';
import 'package:scoped_model/scoped_model.dart';

/// Start app screen
class HomeScreen extends StatefulWidgetApp {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends StateApp<HomeScreen> {
  @override
  Widget buildWide(
    BuildContext context,
    AppLocalizations l10n,
  ) {
    return ScopedModel<HomeModel>(
      model: getIt<HomeModel>(),
      child: ScopedModelDescendant<HomeModel>(
        builder: (context, child, model) {
          return Scaffold(
            body: Container(
              width: double.infinity,
              color: AppColors.background,
              child: const Stack(
                children: [
                  HomeLogo(),
                  Column(
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            Flexible(
                              flex: 0,
                              child: Column(
                                children: [
                                  HomeInfo(),
                                  HomeLinks(),
                                  SizedBox(height: 35),
                                  HomeConnectActions(),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: HomeConnectList(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
