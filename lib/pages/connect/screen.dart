import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gui_clickhouse/base/di/app_di.dart';
import 'package:flutter_gui_clickhouse/components/base/export.dart';
import 'package:flutter_gui_clickhouse/pages/connect/model.dart';
import 'package:flutter_gui_clickhouse/theme/colors.dart';
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
            appBar: AppBar(
              foregroundColor: Colors.white,
              backgroundColor: AppColors.primary,
              title: Text("Connect"),
              leading: IconButton(
                icon: Icon(
                  Platform.isMacOS ? Icons.arrow_back_ios_new_rounded : Icons.arrow_back,
                ),
                padding: EdgeInsets.only(right: Platform.isMacOS ? 2 : 0),
                tooltip: 'Back',
                onPressed: () => Navigator.of(context).pop(),
              ),            ),
            body: Container(
              width: double.infinity,
              height: double.infinity,
              color: const Color(0XFFE8ECF5),
              child: const Center(
                child: Text('Test'),
              ),
            ),
          );
        },
      ),
    );
  }
}
