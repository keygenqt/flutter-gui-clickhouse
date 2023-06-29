import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gui_clickhouse/base/di/app_di.dart';
import 'package:flutter_gui_clickhouse/components/base/export.dart';
import 'package:flutter_gui_clickhouse/pages/home/model.dart';
import 'package:scoped_model/scoped_model.dart';

/// Main screen
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
            body: Center(
              child: ElevatedButton(
                child: const Text('To Authentication'),
                onPressed: () => Navigator.pushNamed(context, '/auth'),
              ),
            ),
          );
        },
      ),
    );
  }
}
