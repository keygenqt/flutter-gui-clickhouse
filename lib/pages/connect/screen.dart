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
              ),
            ),
            body: Row(
              children: [
                Flexible(
                  flex: 0,
                  child: Container(
                    color: const Color(0XFFE8ECF5),
                    height: double.infinity,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                        child: Column(
                          children: [
                            for (int i = 0; i < 3; i++)
                              Column(
                                children: [
                                  Card(
                                    color: Colors.white,
                                    elevation: 0,
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(12),
                                      onTap: () => debugPrint('click'),
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 20, top: 8, right: 8, bottom: 8),
                                        child: Row(
                                          children: [
                                            Text(
                                              'my_table_$i',
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(color: Colors.black, fontSize: 18),
                                            ),
                                            SizedBox(width: 12),
                                            Icon(Icons.arrow_drop_down_sharp),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                ],
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    color: Colors.white,
                    height: double.infinity,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                        child: Column(
                          children: [
                            for (int i = 0; i < 15; i++)
                              Column(
                                children: [
                                  Container(
                                    color: i % 2 == 0 ? Color(0XFFE8ECF5) : Colors.white,
                                    width: double.infinity,
                                    height: 42,
                                  ),
                                ],
                              ),
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
