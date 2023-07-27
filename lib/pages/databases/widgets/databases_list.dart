import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gui_clickhouse/components/base/stateless_widget_app.dart';
import 'package:flutter_gui_clickhouse/theme/radius.dart';

class DatabasesList extends StatelessWidgetApp {
  const DatabasesList({super.key});

  @override
  Widget buildWide(
    BuildContext context,
    AppLocalizations l10n,
  ) {
    return Padding(
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
    );
  }
}
